import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
 
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
//custon widgets functions

  void audioPlauer(soundItem) {
    final player = AudioPlayer();
    player.play(AssetSource("note$soundItem.wav"));
    debugPrint("the arg: $soundItem");
  }

  Expanded builderKey({Color? color, int? soundnumber}) {
    return Expanded(
      child: OutlinedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          audioPlauer(soundnumber);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            builderKey(
                color: Color.fromARGB(255, 106, 151, 171), soundnumber: 1),
            builderKey(
                color: Color.fromARGB(255, 241, 245, 246), soundnumber: 2),
            builderKey(color: Color.fromARGB(255, 221, 17, 85), soundnumber: 3),
            builderKey(color: Color.fromARGB(255, 61, 104, 90), soundnumber: 4),
            builderKey(color: Color.fromARGB(255, 8, 198, 8), soundnumber: 5),
            builderKey(color: Color.fromARGB(255, 21, 18, 18), soundnumber: 6),
            builderKey(
                color: Color.fromARGB(255, 141, 21, 239), soundnumber: 7),
          ]),
        ),
      ),
    );
  }
}
