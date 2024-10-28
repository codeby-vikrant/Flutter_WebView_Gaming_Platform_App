import 'package:platform_web_view/domain/entities/game_entity.dart';
import 'package:platform_web_view/domain/repositories/game_repo.dart';

class GameRepoImplementation implements GameRepository{
  @override
  List<GameEntity> fetchGames(){
    return [
      GameEntity(
        name: "Kongregate",
        url: 'https://www.kongregate.com',
        logoUrl: ''
      ),
      GameEntity(
          name: "Armor Games",
          url: 'https://armorgames.com',
          logoUrl: ''
      ),
      GameEntity(
          name: "Mini Clip",
          url: 'https://www.miniclip.com/games/en/',
          logoUrl: ''
      ),
      GameEntity(
          name: "Pogo",
          url: 'https://www.pogo.com',
          logoUrl: ''
      ),
      GameEntity(
          name: "Addicting Games",
          url: 'https://www.adictinggames.com',
          logoUrl: ''
      ),
    ];
  }
}