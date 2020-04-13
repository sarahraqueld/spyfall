import 'package:flutter/material.dart';
import 'package:spyfall/domain/player.dart';
import 'package:spyfall/presenters/game_presenter.dart';

class ViewPlayerRole extends StatelessWidget {
  Player player;
  GamePresenter gamePresenter;

  ViewPlayerRole(player, gamePresenter) {
    this.gamePresenter = gamePresenter;
    this.player = player;
  }

  @override
  Widget build(BuildContext context) {

    void next() {
      this.gamePresenter.next(context);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Player ' + this.player.id.toString()),
            Text('Role:' + this.player.role),
            FlatButton(
              onPressed: next,
              child: Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}



