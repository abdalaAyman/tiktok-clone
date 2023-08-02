// ignore_for_file: file_names, camel_case_types

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class playScreen extends StatefulWidget {
  const playScreen({super.key});

  @override
  State<playScreen> createState() => _playScreenState();
}

class _playScreenState extends State<playScreen> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  void initState() {
    super.initState();
    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
    String url = 'https://www.youtube.com/watch?v=X2YnP50cwNU';
    audioPlayer.setUrl(url);
  }

  @override
  void dispose() {
    audioPlayer.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Now Play",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.black,
          )
        ],
        leading: Builder(builder: (context) {
          return (IconButton(
            icon: const Icon(Icons.chevron_left),
            color: Colors.black,
            iconSize: 40,
            onPressed: () {
              Navigator.pop(context);
            },
          ));
        }),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: 355,
              width: 360,
              margin: const EdgeInsets.fromLTRB(35, 15, 35, 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTulrjde4-n4VuyYG5r6G150Pz-2GqV1LiV8A&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(30, 133, 120, 246),
                    offset: Offset(
                      0.0,
                      23.0,
                    ), //Offset
                    blurRadius: 58.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              )),
          const Text(
            "Souret Elbakara",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            "Narrated by Hafs",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 157, 156, 161),
              fontWeight: FontWeight.w400,
            ),
          ),
          Slider(
              min: 0,
              max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),
              activeColor: const Color.fromRGBO(132, 120, 246, 1),
              inactiveColor: const Color.fromRGBO(246, 244, 253, 1),
              thumbColor: const Color.fromRGBO(132, 120, 246, 1),
              onChanged: (value) async {
                final position = Duration(seconds: value.toInt());
                await audioPlayer.seek(position);
                await audioPlayer.resume();
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatTime(position.inSeconds),
                  style: const TextStyle(
                    color: Color.fromRGBO(157, 156, 161, 1),
                  ),
                ),
                Text(
                    formatTime(
                      (duration - position).inSeconds,
                    ),
                    style: const TextStyle(
                      color: Color.fromRGBO(157, 156, 161, 1),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: ImageIcon(AssetImage('assets/icons/image 2.png')),
                iconSize: 40,
                color: Color.fromRGBO(157, 156, 161, 1),
              ),
              CircleAvatar(
                backgroundColor: const Color.fromRGBO(132, 120, 246, 1),
                radius: 35,
                child: IconButton(
                  icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                  iconSize: 50,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () async {
                    if (isPlaying) {
                      await audioPlayer.pause();
                    } else {
                      String url =
                          'https://www.youtube.com/watch?v=X2YnP50cwNU';
                      await audioPlayer.play(url);
                    }
                  },
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.forward_10),
                iconSize: 40,
                color: Color.fromRGBO(157, 156, 161, 1),
              ),
            ],
          )
        ],
      ),
    );
  }
}
