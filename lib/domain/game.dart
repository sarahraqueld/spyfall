import 'package:spyfall/domain/player.dart';

class Game {
  List<Player> players = [];

  void start() {
    createPlayers();
  }

  void createPlayers() {
    [0, 1, 2, 4].forEach((id) => players.add(new Player(id)));
  }
}