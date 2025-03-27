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
    return const Placeholder();
  }
}
