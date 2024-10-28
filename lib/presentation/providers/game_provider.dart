import 'package:flutter/material.dart';
import 'package:platform_web_view/data/repositories/game_repo_implement.dart';
import 'package:platform_web_view/domain/entities/game_entity.dart';

class GameProvider with ChangeNotifier{
  List<GameEntity> _games = [];
  final GameRepoImplementation _gameRepository = GameRepoImplementation();

  List<GameEntity> get games => _games;
}