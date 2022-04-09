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


/** This is an auto generated class representing the PlayerGameWinner type in your schema. */
@immutable
class PlayerGameWinner extends Model {
  static const classType = const _PlayerGameWinnerModelType();
  final String id;
  final Player? _player;
  final GameWinner? _gameWinner;
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
  
  GameWinner get gameWinner {
    try {
      return _gameWinner!;
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
  
  const PlayerGameWinner._internal({required this.id, required player, required gameWinner, createdAt, updatedAt}): _player = player, _gameWinner = gameWinner, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PlayerGameWinner({String? id, required Player player, required GameWinner gameWinner}) {
    return PlayerGameWinner._internal(
      id: id == null ? UUID.getUUID() : id,
      player: player,
      gameWinner: gameWinner);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerGameWinner &&
      id == other.id &&
      _player == other._player &&
      _gameWinner == other._gameWinner;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PlayerGameWinner {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("player=" + (_player != null ? _player!.toString() : "null") + ", ");
    buffer.write("gameWinner=" + (_gameWinner != null ? _gameWinner!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PlayerGameWinner copyWith({String? id, Player? player, GameWinner? gameWinner}) {
    return PlayerGameWinner._internal(
      id: id ?? this.id,
      player: player ?? this.player,
      gameWinner: gameWinner ?? this.gameWinner);
  }
  
  PlayerGameWinner.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _player = json['player']?['serializedData'] != null
        ? Player.fromJson(new Map<String, dynamic>.from(json['player']['serializedData']))
        : null,
      _gameWinner = json['gameWinner']?['serializedData'] != null
        ? GameWinner.fromJson(new Map<String, dynamic>.from(json['gameWinner']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'player': _player?.toJson(), 'gameWinner': _gameWinner?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "playerGameWinner.id");
  static final QueryField PLAYER = QueryField(
    fieldName: "player",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Player).toString()));
  static final QueryField GAMEWINNER = QueryField(
    fieldName: "gameWinner",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (GameWinner).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PlayerGameWinner";
    modelSchemaDefinition.pluralName = "PlayerGameWinners";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlayerGameWinner.PLAYER,
      isRequired: true,
      targetName: "playerID",
      ofModelName: (Player).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: PlayerGameWinner.GAMEWINNER,
      isRequired: true,
      targetName: "gameWinnerID",
      ofModelName: (GameWinner).toString()
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

class _PlayerGameWinnerModelType extends ModelType<PlayerGameWinner> {
  const _PlayerGameWinnerModelType();
  
  @override
  PlayerGameWinner fromJson(Map<String, dynamic> jsonData) {
    return PlayerGameWinner.fromJson(jsonData);
  }
}