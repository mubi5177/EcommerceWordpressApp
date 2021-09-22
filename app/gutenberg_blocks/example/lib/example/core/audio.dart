import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleAudio extends StatefulWidget {
  _ExampleAudioState createState() => _ExampleAudioState();
}

class _ExampleAudioState extends State<ExampleAudio> {
  bool play = false;
  bool volumn = false;
  Future<void> onPlay({bool? isPlay}) async {
    setState(() {
      play = isPlay!;
    });
    await play;
  }

  Future<void> onVolumn({bool? isVolumn}) async {
    setState(() {
      volumn = isVolumn!;
    });
    await volumn;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AudioItem(
          onTapPlay: () => onPlay(isPlay: !play),
          position: Text('00:00 / 00:00'),
          volumn: GestureDetector(
            onTap: () => onVolumn(isVolumn: !volumn),
            child: AnimatedOpacity(
              opacity: volumn ? 1.0 : 0.4,
              duration: const Duration(milliseconds: 300),
              child: Icon(
                volumn ? Icons.volume_up : Icons.volume_off,
              ),
            ),
          ),
          playing: play,
          color: Theme.of(context).dividerColor,
          padding: EdgeInsetsDirectional.only(start: 16, end: 16),
          durationSeek: Duration(hours: 1),
          positionSeek: Duration(minutes: 20),
          bufferedPosition: Duration(minutes: 50),
          playedColor: Theme.of(context).primaryColor,
          bufferedColor:Colors.blue.shade100,
          handleColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
