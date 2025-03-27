import 'package:audio_query/audio_query.dart';
import 'package:audio_manager/audio_manager.dart';
import 'package:flutter/material.dart';


class MyAudioService extends StatefulWidget {
  const MyAudioService({super.key});

  @override
  State<MyAudioService> createState() => _MyAudioServiceState();
}

class _MyAudioServiceState extends State<MyAudioService> {

  var audioManagerInstance = AudioManager.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Service - Plays Audio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text("My Audio Service App")
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          audioManagerInstance
              .start(
              "assets/Zawjaty.mp3",
              //"https://www.deezer.com/en/track/32759531"
              "Zawjati",
              desc: "My Wife Nasheed",
              cover: "assets/zawjati.jpeg"
          ).then((err) {
            print(err);
          });
        },
        child: Icon(Icons.play_circle_outline_outlined),
      ),
    );
  }
}
