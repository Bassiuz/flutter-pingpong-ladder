import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pingpong_ladder/amplify_service.dart';
import 'package:pingpong_ladder/widgets/SplashScreenView.dart';
import 'models/ModelProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    await AmplifyService().configure();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : MaterialApp(
              builder: Authenticator.builder(),
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              initialRoute: '/splashScreen',
              routes: {
                  '/splashScreen': (BuildContext context) =>
                      const SplashScreenView(),
                  '/main': (BuildContext context) {
                    return const AuthenticatedView(
                      child: MyHomePage(title: 'Flutter Demo Home Page'),
                    );
                  },
                }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  AuthUser awsUser = AuthUser(userId: '0', username: 'Guest');
  Player player = Player();
  Future<void> _incrementCounter() async {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _loadCurrentUser();
    });
  }

  void _loadCurrentUser() async {
    var currentUser = await Amplify.Auth.getCurrentUser();
    Player currentPlayer;
    List<Player> players = await Amplify.DataStore.query(Player.classType,
        where: Player.EMAIL.eq(currentUser.username));

    if (players.isNotEmpty) {
      currentPlayer = players.first;
    } else {
      //TO-DO: NAVIGATE TO CREATE ACCOUNT PAGE INSTEAD
      currentPlayer = Player(
          email: currentUser.username,
          name: "Bas de Vaan",
          bio:
              "Potentieel koning van de wereld en afgevaardigde van de internationale kipproeverij");
      await Amplify.DataStore.save(currentPlayer);
    }

    setState(() {
      player = currentPlayer;
      awsUser = currentUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, ${awsUser.username}!',
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
