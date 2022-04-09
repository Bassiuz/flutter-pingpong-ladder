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


/** This is an auto generated class representing the Game type in your schema. */
@immutable
class Game extends Model {
  static const classType = const _GameModelType();
  final String id;
  final List<PlayerGame>? _players;
  final GameWinner? _winners;
  final TemporalDateTime? _playedAt;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<PlayerGame>? get players {
    return _players;
  }
  
  GameWinner? get winners {
    return _winners;
  }
  
  TemporalDateTime? get playedAt {
    return _playedAt;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Game._internal({required this.id, players, winners, playedAt, createdAt, updatedAt}): _players = players, _winners = winners, _playedAt = playedAt, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Game({String? id, List<PlayerGame>? players, GameWinner? winners, TemporalDateTime? playedAt}) {
    return Game._internal(
      id: id == null ? UUID.getUUID() : id,
      players: players != null ? List<PlayerGame>.unmodifiable(players) : players,
      winners: winners,
      playedAt: playedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Game &&
      id == other.id &&
      DeepCollectionEquality().equals(_players, other._players) &&
      _winners == other._winners &&
      _playedAt == other._playedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Game {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("winners=" + (_winners != null ? _winners!.toString() : "null") + ", ");
    buffer.write("playedAt=" + (_playedAt != null ? _playedAt!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Game copyWith({String? id, List<PlayerGame>? players, GameWinner? winners, TemporalDateTime? playedAt}) {
    return Game._internal(
      id: id ?? this.id,
      players: players ?? this.players,
      winners: winners ?? this.winners,
      playedAt: playedAt ?? this.playedAt);
  }
  
  Game.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _players = json['players'] is List
        ? (json['players'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PlayerGame.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _winners = json['winners']?['serializedData'] != null
        ? GameWinner.fromJson(new Map<String, dynamic>.from(json['winners']['serializedData']))
        : null,
      _playedAt = json['playedAt'] != null ? TemporalDateTime.fromString(json['playedAt']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'players': _players?.map((PlayerGame? e) => e?.toJson()).toList(), 'winners': _winners?.toJson(), 'playedAt': _playedAt?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "game.id");
  static final QueryField PLAYERS = QueryField(
    fieldName: "players",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (PlayerGame).toString()));
  static final QueryField WINNERS = QueryField(
    fieldName: "winners",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (GameWinner).toString()));
  static final QueryField PLAYEDAT = QueryField(fieldName: "playedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Game";
    modelSchemaDefinition.pluralName = "Games";
    
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
      key: Game.PLAYERS,
      isRequired: false,
      ofModelName: (PlayerGame).toString(),
      associatedKey: PlayerGame.GAME
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Game.WINNERS,
      isRequired: false,
      targetName: "gameWinnersId",
      ofModelName: (GameWinner).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Game.PLAYEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
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

class _GameModelType extends ModelType<Game> {
  const _GameModelType();
  
  @override
  Game fromJson(Map<String, dynamic> jsonData) {
    return Game.fromJson(jsonData);
  }
}