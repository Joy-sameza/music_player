import 'package:flutter/material.dart';
import 'package:music_player/music_list.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key, required this.title, required this.author})
      : super(key: key);
  final String title;
  final String author;

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color.fromARGB(211, 255, 255, 255), Color.fromARGB(255, 122, 85, 129)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MusicList()));
              },
              icon: const Icon(Icons.expand_more_outlined)),
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
                          color: Color.fromARGB(170, 49, 49, 49))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 200.0, 10.0, 0.0),
              child: Row(
                children: [
                  const Text("00:00", style: TextStyle(color: Colors.white),),
                  Expanded(
                    child: Slider.adaptive(
                      activeColor: Colors.white,
                      thumbColor: Colors.white,
                      inactiveColor: const Color.fromARGB(255, 175, 175, 175),
                      value: _currentValue,
                      onChanged: (newValue) {
                        setState(() {
                          _currentValue = newValue;
                        });
                      }),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text("00:00", style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shuffle_rounded),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 50.0,
                  color: Colors.white,
                  icon: const Icon(Icons.skip_previous_rounded),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width) * 0.01,
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 50.0,
                  color: Colors.white,
                  icon: const Icon(Icons.play_arrow_rounded),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width) * 0.01,
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: const Icon(Icons.skip_next_rounded),
                  iconSize: 50.0,
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width) * 0.01,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.repeat_rounded),
                  color: Colors.white,
                  iconSize: 50.0,
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(

              ),),
          ],
        ),
      ),
    );
  }
}

class AboutSong {
  AboutSong(String songTitle, String songAuthor);
}
