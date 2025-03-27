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
            GestureDetector(
              onTap: () {
                audioManagerInstance
                    .start(
                    "https://open.spotify.com/track/7JNoqRK7SzlEgP7wTmKZSs",
                    //"https://www.deezer.com/en/track/32759531"
                    "Zawjati",
                    desc: "My Wife Nasheed",
                    cover: "https://cdn-images.dzcdn.net/images/cover/140ad19823646437c994b3b97f4213ab/500x500-000000-80-0-0.jpg"
                ).then((err) {
                  print(err);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
