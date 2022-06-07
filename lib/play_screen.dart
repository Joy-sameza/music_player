import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    // var newValue;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.expand_more),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(100, 158, 158, 158),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 40.0),
            child: Column(
              children: const [
                Text("Song Title Here",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                Text('Music Author',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16)),
              ],
            ),
          ),
          
          Slider.adaptive(
              value: _currentValue,
              onChanged: (newValue) {
                setState(() {
                  _currentValue = newValue;
                });
              }),
        ],
      ),
    );
  }
}

class AboutSong {
  AboutSong(String songTitle, String songAuthor);

}
