import 'package:flutter/material.dart';
import 'package:music_player/music_list.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key, required this.title, required this.author}) : super(key: key);
  final String title;
  final String author;

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('GDSC Music Player'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MusicList())
            );
          }, 
          icon: const Icon(Icons.expand_more_outlined)),
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
                  color: Color.fromARGB(170, 160, 160, 160),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 40.0),
            child: Column(
                children: [
                  Text(widget.title,
                  overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      )),
                  Text(widget.author,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 16,
                      color: Color.fromARGB(170, 160, 160, 160))),
                ],
                ),
          ),
              const Text("00:00"),
              
              Slider.adaptive(
                  value: _currentValue,
                  onChanged: (newValue) {
                    setState(() {
                      _currentValue = newValue;
                    });
                  }),
              const Text("00:00"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 50.0,
                icon: const Icon(Icons.skip_previous),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 50.0,
                icon: const Icon(Icons.play_arrow),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.skip_next),
                iconSize: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutSong {
  AboutSong(String songTitle, String songAuthor);
}
