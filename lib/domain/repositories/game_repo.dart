import 'package:platform_web_view/domain/entities/game_entity.dart';

abstract class GameRepository{
  List<GameEntity> fetchGames();
}