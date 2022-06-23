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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                onPressed: () {},
                icon: const Icon(Icons.shuffle_outlined),
                tooltip: 'Shuffle',
              ),
              const SizedBox(width: 6.0),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.repeat_on),
                  tooltip: 'Repeat',
                ),
              )
            ]),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: backColor),
        child: Stack(
          children: 
                [ListView.builder(
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
                          "Music ${index + 1}",
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Author ${index + 1}",
                          style: const TextStyle(fontSize: 14.0, color: mainColor),
                          textDirection: TextDirection.ltr,
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
                          primary: mainColor,
                          minimumSize: Size((width * 0.8), 80),
                          maximumSize: Size((width * 0.8), 100),
                          shape: const StadiumBorder()
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.deepOrange
                          ),
                          child: Row(
                            children: [
                              Text('Hight: $height\nWidth: $width')
                            ],
                          ),
                        ),),
                    ),
                  )
                ],),
              ],
        ),
      ),
    );
  }
}

// class Transition extends PageRouteBuilder {
//   final Widget page;
//   Transition(this.page)
//       : super(
//             pageBuilder: (context, animation, otherAnimation) => page,
//             transitionDuration: const Duration(seconds: 1),
//             reverseTransitionDuration: const Duration(milliseconds: 200),
//             transitionsBuilder: (context, animation, otherAnimation, child) {
//               animation = CurvedAnimation(
//                   parent: animation,
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   reverseCurve: Curves.fastOutSlowIn);
//               return Align(
//                 alignment: Alignment.bottomCenter,
//                 child: SizeTransition(
//                   sizeFactor: animation,
//                   axisAlignment: 0,
//                   child: page,
//                 ),
//               );
//             });
// }
