import 'package:flutter/material.dart';
import 'package:music_player/play_screen.dart';

class MusicList extends StatefulWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
            elevation: 0.0,
            title: const Text(
              "GDSC Music Player",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shuffle_outlined),
              ),
              const SizedBox(width: 6.0),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.repeat_on_outlined),
                ),
              )
            ]),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              String _songTitle;
              String _songAuthor;
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: ListTile(
                    onTap: (() {
                      _songAuthor = "Author ${index + 1}";
                      _songTitle = "Music ${index + 1}";
                      AboutSong(_songTitle, _songAuthor);
                    }),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    title: Text(
                      "Music ${index + 1}",
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Author ${index + 1}",
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
