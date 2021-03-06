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
    const mainColor = Colors.grey;
    const backColor = Colors.white;
    const thirdColor = Color.fromARGB(255, 122, 85, 129);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double size = ((width + height) / 2) * 0.075;
    return Scaffold(
      backgroundColor: mainColor,
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
                onPressed: () {
                  return;
                },
                icon: const Icon(Icons.shuffle_outlined),
                tooltip: 'Shuffle',
              ),
              const SizedBox(width: 6.0),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.repeat_on_rounded)),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded),
                  tooltip: 'Option',
                ),
              )
            ]),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: backColor),
        child: Stack(
          children: [
            ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  String songTitle;
                  String songAuthor;
                  return Container(
                    decoration: const BoxDecoration(
                      color: backColor,
                      border: Border(
                        bottom: BorderSide(color: mainColor, width: 2.0),
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: backColor),
                      onPressed: () {
                        songAuthor = "Author ${index + 1}";
                        songTitle = "Music ${index + 1}";

                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => PlayScreen(
                                    title: songTitle,
                                    author: songAuthor,
                                  )),
                        );
                      },
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: mainColor,
                        ),
                        title: Text(
                          overflow: TextOverflow.ellipsis,
                          "Music ${index + 1}",
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Author ${index + 1}",
                          overflow: TextOverflow.ellipsis,
                          style:
                              const TextStyle(fontSize: 14.0, color: mainColor),
                        ),
                      ),
                    ),
                  );
                }),
            Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: (height * 0.08)),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        primary: thirdColor,
                        minimumSize: Size((width * 0.8), 80),
                        maximumSize: Size((width), 100),
                        shape: const StadiumBorder(),
                        shadowColor: mainColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 25.0,
                            backgroundColor: backColor,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                Text(
                                  'Hight: $height',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0),
                                ),
                                Text(
                                  'Width: $width dddd dddddddddddddddefgh',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_previous_rounded),
                              color: Colors.white,
                              iconSize: size),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.play_arrow_rounded),
                            color: Colors.white,
                            iconSize: size,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.skip_next_rounded),
                              color: Colors.white,
                              iconSize: size),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
