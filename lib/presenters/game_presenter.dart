import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spyfall/domain/game.dart';
import 'package:spyfall/view_player_role.dart';

class GamePresenter {

  Game game;
  List<MaterialPageRoute> pages = new List();

  GamePresenter(Game game) {
    this.game = game;
    buildPages();
  }

  void buildPages() {
    this.game.players.forEach((player) =>
      this.pages.add(MaterialPageRoute(builder: (context) => ViewPlayerRole(player, this)))
    );
  }

  void next(context) {
    MaterialPageRoute page = this.pages.first;
    this.pages.removeAt(0);
    Navigator.push(context, page);
  }
}