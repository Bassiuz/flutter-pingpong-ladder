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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the PlayerGame type in your schema. */
@immutable
class PlayerGame extends Model {
  static const classType = const _PlayerGameModelType();
  final String id;
  final Player? _player;
  final Game? _game;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Player get player {
    try {
      return _player!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Game get game {
    try {
      return _game!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const PlayerGame._internal({required this.id, required player, required game, createdAt, updatedAt}): _player = player, _game = game, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PlayerGame({String? id, required Player player, required Game game}) {
    return PlayerGame._internal(
      id: id == null ? UUID.getUUID() : id,
      player: player,
      game: game);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerGame &&
      id == other.id &&
      _player == other._player &&
      _game == other._game;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PlayerGame {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("player=" + (_player != null ? _player!.toString() : "null") + ", ");
    buffer.write("game=" + (_game != null ? _game!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PlayerGame copyWith({String? id, Player? player, Game? game}) {
    return PlayerGame._internal(
      id: id ?? this.id,
      player: player ?? this.player,
      game: game ?? this.game);
  }
  
  PlayerGame.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _player = json['player']?['serializedData'] != null
        ? Player.fromJson(new Map<String, dynamic>.from(json['player']['serializedData']))
        : null,
      _game = json['game']?['serializedData'] != null
        ? Game.fromJson(new Map<String, dynamic>.from(json['game']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'player': _player?.toJson(), 'game': _game?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "playerGame.id");
  static final QueryField PLAYER = QueryField(
    fieldName: "player",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Player).toString()));
  static final QueryField GAME = QueryField(
    fieldName: "game",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Game).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PlayerGame";
    modelSchemaDefinition.pluralName = "PlayerGames";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlayerGame.PLAYER,
      isRequired: true,
      targetName: "playerID",
      ofModelName: (Player).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlayerGame.GAME,
      isRequired: true,
      targetName: "gameID",
      ofModelName: (Game).toString()
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

class _PlayerGameModelType extends ModelType<PlayerGame> {
  const _PlayerGameModelType();
  
  @override
  PlayerGame fromJson(Map<String, dynamic> jsonData) {
    return PlayerGame.fromJson(jsonData);
  }
}