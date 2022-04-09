/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Player type in your schema. */
@immutable
class Player extends Model {
  static const classType = const _PlayerModelType();
  final String id;
  final List<PlayerGame>? _games;
  final List<PlayerGameWinner>? _wonGames;
  final String? _name;
  final String? _bio;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<PlayerGame>? get games {
    return _games;
  }
  
  List<PlayerGameWinner>? get wonGames {
    return _wonGames;
  }
  
  String? get name {
    return _name;
  }
  
  String? get bio {
    return _bio;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Player._internal({required this.id, games, wonGames, name, bio, createdAt, updatedAt}): _games = games, _wonGames = wonGames, _name = name, _bio = bio, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Player({String? id, List<PlayerGame>? games, List<PlayerGameWinner>? wonGames, String? name, String? bio}) {
    return Player._internal(
      id: id == null ? UUID.getUUID() : id,
      games: games != null ? List<PlayerGame>.unmodifiable(games) : games,
      wonGames: wonGames != null ? List<PlayerGameWinner>.unmodifiable(wonGames) : wonGames,
      name: name,
      bio: bio);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Player &&
      id == other.id &&
      DeepCollectionEquality().equals(_games, other._games) &&
      DeepCollectionEquality().equals(_wonGames, other._wonGames) &&
      _name == other._name &&
      _bio == other._bio;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Player {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("bio=" + "$_bio" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Player copyWith({String? id, List<PlayerGame>? games, List<PlayerGameWinner>? wonGames, String? name, String? bio}) {
    return Player._internal(
      id: id ?? this.id,
      games: games ?? this.games,
      wonGames: wonGames ?? this.wonGames,
      name: name ?? this.name,
      bio: bio ?? this.bio);
  }
  
  Player.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _games = json['games'] is List
        ? (json['games'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PlayerGame.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _wonGames = json['wonGames'] is List
        ? (json['wonGames'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PlayerGameWinner.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _name = json['name'],
      _bio = json['bio'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'games': _games?.map((PlayerGame? e) => e?.toJson()).toList(), 'wonGames': _wonGames?.map((PlayerGameWinner? e) => e?.toJson()).toList(), 'name': _name, 'bio': _bio, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "player.id");
  static final QueryField GAMES = QueryField(
    fieldName: "games",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (PlayerGame).toString()));
  static final QueryField WONGAMES = QueryField(
    fieldName: "wonGames",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (PlayerGameWinner).toString()));
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField BIO = QueryField(fieldName: "bio");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Player";
    modelSchemaDefinition.pluralName = "Players";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Player.GAMES,
      isRequired: false,
      ofModelName: (PlayerGame).toString(),
      associatedKey: PlayerGame.PLAYER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Player.WONGAMES,
      isRequired: false,
      ofModelName: (PlayerGameWinner).toString(),
      associatedKey: PlayerGameWinner.PLAYER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Player.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Player.BIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _PlayerModelType extends ModelType<Player> {
  const _PlayerModelType();
  
  @override
  Player fromJson(Map<String, dynamic> jsonData) {
    return Player.fromJson(jsonData);
  }
}