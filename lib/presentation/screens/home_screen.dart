import 'package:flutter/material.dart';
import 'package:platform_web_view/presentation/providers/game_provider.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gameProvider = Provider.of<GameProvider>(context);
    gameProvider.fetchGames();

    return Scaffold(
      appBar: AppBar(
        title: Text('Game Platforms'),
      ),
      body: ListView.builder(
        itemCount: gameProvider.games.length,
        itemBuilder: (context, index){
          final game = gameProvider.games[index];
          return ListTile(
            leading: CachedNetworkImage(imageUrl: game.logoUrl, placeholder: (context, url) => const CircularProgressIndicator(),),
          );
        }
      ),
    );
  }
}
