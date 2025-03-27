import 'package:audio_query/audio_query.dart';
import 'package:audio_manager/audio_manager.dart';
import 'package:flutter/material.dart';


class MyAudioService extends StatefulWidget {
  const MyAudioService({super.key});

  @override
  State<MyAudioService> createState() => _MyAudioServiceState();
}

class _MyAudioServiceState extends State<MyAudioService> {

  final AudioManager audioManagerInstance = AudioManager.instance;
  bool isPlaying = false;

  @override
  void initState(){
    super.initState();
    _setupAudio();
  }

  void _setupAudio () {
    audioManagerInstance.onEvents((events, args) {
      if (events == AudioManagerEvents.playstatus) {
        setState(() {
          isPlaying = args;
        });
      } else if (events == AudioManagerEvents.error) {
        print("Audio error: $args");
      }
    }
    );
  }

  void _playAudio(){
    audioManagerInstance
        .start(
        "assets/Zawjaty.mp3",
        "Zawjati",
        auto: true,
        desc: "My Wife Nasheed",
        cover: "assets/zawjati.jpeg"
    ).then((result) {
      if (result != null) {
        print("Audio start error: $result");
      }
    });
  }

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
                onTap: _playAudio,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.red,
                  child: const Icon(
                      Icons.play_circle_outline_outlined,
                    color: Colors.black,
                    size: 50.0,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Text(isPlaying ? "Playing" : "paused"),
            ],
          ),
        ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _playAudio,
        child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
      ),*/
    );
  }
}
