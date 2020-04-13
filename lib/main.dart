import 'package:flutter/material.dart';
import 'package:spyfall/domain/game.dart';
import 'package:spyfall/domain/player.dart';
import 'package:spyfall/presenters/game_presenter.dart';
import 'package:spyfall/view_player_role.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    void startGame() {
      Game game = new Game();
      GamePresenter gamePresenter = new GamePresenter(game);
      gamePresenter.next(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: startGame,
              color: Colors.purple,
              textColor: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Start Game',
              ),
            )
          ],
        ),
      ),
    );
  }
}
