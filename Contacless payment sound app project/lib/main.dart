import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/sounds/as.mp3"),
    );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text(
            'Contactless Payment Sound',
            style: TextStyle(color: Colors.lime),
          ),
          backgroundColor: Colors.black54,
          centerTitle: true,

        ),
        body: Resimler(assetsAudioPlayer),
      ),
    );
  }
}

class Resimler extends StatefulWidget {
  final AssetsAudioPlayer assetsAudioPlayer;

  Resimler(this.assetsAudioPlayer);

  @override
  State<Resimler> createState() => _ResimlerState();
}



class _ResimlerState extends State<Resimler> {
  void playsound() {
    widget.assetsAudioPlayer.play();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: playsound,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                'assets/images/iconiki.png',
                scale: 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

