import 'package:flutter/material.dart';
import 'package:spyfall/domain/player.dart';

class ViewPlayerRole extends StatelessWidget {
  Player player;

  ViewPlayerRole(player) {
    this.player = player;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Player ' + this.player.id.toString()),
            Text('Role:' + this.player.role),
          ],
        ),
      ),
    );
  }
}



