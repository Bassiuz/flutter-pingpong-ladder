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


/** This is an auto generated class representing the GameWinner type in your schema. */
@immutable
class GameWinner extends Model {
  static const classType = const _GameWinnerModelType();
  final String id;
  final List<PlayerGameWinner>? _winners;
  final Game? _game;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _gameWinnerGameId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<PlayerGameWinner>? get winners {
    return _winners;
  }
  
  Game? get game {
    return _game;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get gameWinnerGameId {
    return _gameWinnerGameId;
  }
  
  const GameWinner._internal({required this.id, winners, game, createdAt, updatedAt, gameWinnerGameId}): _winners = winners, _game = game, _createdAt = createdAt, _updatedAt = updatedAt, _gameWinnerGameId = gameWinnerGameId;
  
  factory GameWinner({String? id, List<PlayerGameWinner>? winners, Game? game, String? gameWinnerGameId}) {
    return GameWinner._internal(
      id: id == null ? UUID.getUUID() : id,
      winners: winners != null ? List<PlayerGameWinner>.unmodifiable(winners) : winners,
      game: game,
      gameWinnerGameId: gameWinnerGameId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameWinner &&
      id == other.id &&
      DeepCollectionEquality().equals(_winners, other._winners) &&
      _game == other._game &&
      _gameWinnerGameId == other._gameWinnerGameId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("GameWinner {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("gameWinnerGameId=" + "$_gameWinnerGameId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GameWinner copyWith({String? id, List<PlayerGameWinner>? winners, Game? game, String? gameWinnerGameId}) {
    return GameWinner._internal(
      id: id ?? this.id,
      winners: winners ?? this.winners,
      game: game ?? this.game,
      gameWinnerGameId: gameWinnerGameId ?? this.gameWinnerGameId);
  }
  
  GameWinner.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _winners = json['winners'] is List
        ? (json['winners'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PlayerGameWinner.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _game = json['game']?['serializedData'] != null
        ? Game.fromJson(new Map<String, dynamic>.from(json['game']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _gameWinnerGameId = json['gameWinnerGameId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'winners': _winners?.map((PlayerGameWinner? e) => e?.toJson()).toList(), 'game': _game?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'gameWinnerGameId': _gameWinnerGameId
  };

  static final QueryField ID = QueryField(fieldName: "gameWinner.id");
  static final QueryField WINNERS = QueryField(
    fieldName: "winners",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (PlayerGameWinner).toString()));
  static final QueryField GAME = QueryField(
    fieldName: "game",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Game).toString()));
  static final QueryField GAMEWINNERGAMEID = QueryField(fieldName: "gameWinnerGameId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "GameWinner";
    modelSchemaDefinition.pluralName = "GameWinners";
    
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
      key: GameWinner.WINNERS,
      isRequired: false,
      ofModelName: (PlayerGameWinner).toString(),
      associatedKey: PlayerGameWinner.GAMEWINNER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: GameWinner.GAME,
      isRequired: false,
      ofModelName: (Game).toString(),
      associatedKey: Game.WINNERS
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: GameWinner.GAMEWINNERGAMEID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _GameWinnerModelType extends ModelType<GameWinner> {
  const _GameWinnerModelType();
  
  @override
  GameWinner fromJson(Map<String, dynamic> jsonData) {
    return GameWinner.fromJson(jsonData);
  }
}