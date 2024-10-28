import 'package:flutter/material.dart';
import 'package:platform_web_view/presentation/providers/game_provider.dart';
import 'package:platform_web_view/presentation/screens/web_view.dart';
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
          itemBuilder: (context, index) {
            final game = gameProvider.games[index];
            return ListTile(
              leading: CachedNetworkImage(
                imageUrl: game.logoUrl,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(game.name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewScreen(url: game.url),
                  ),
                );
              },
            );
          }),
    );
  }
}
