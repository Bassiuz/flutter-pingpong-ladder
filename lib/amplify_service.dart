import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';

class AmplifyService {
  AmplifyDataStore datastorePlugin =
      AmplifyDataStore(modelProvider: ModelProvider.instance);
  AmplifyAuthCognito authPlugin = AmplifyAuthCognito();

  Future<void> configure() async {
    try {
      await Amplify.addPlugins([datastorePlugin, authPlugin]);
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      print('Error configuring Amplify: $e');
    }
  }
}
