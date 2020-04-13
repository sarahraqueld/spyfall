import 'package:spyfall/domain/player.dart';

class Game {
  List<Player> _players = [];

  Game() {
    createPlayers();
  }

  List<Player> get players {
    return _players;
  }

  void createPlayers() {
    [1, 2, 3, 4].forEach((id) => _players.add(new Player(id, 'Player')));
  }
}