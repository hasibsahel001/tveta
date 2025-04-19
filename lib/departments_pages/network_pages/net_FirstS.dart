
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/small_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorNet1S extends StatefulWidget {
  const NavigatorNet1S({super.key});

  @override
  State<NavigatorNet1S> createState() => _NavigatorNet4SState();
}

class _NavigatorNet4SState extends State<NavigatorNet1S> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Com_ForthS_Books(),
    const YoutubeVideos(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        backgroundColor: Colors.lightBlueAccent,
        color: Colors.cyanAccent,
        height: 55,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(
              "lib/images/book.png",
            ),
          ),
          Container(
            height: 40,
            width: 40,
            child: Image.asset(
              "lib/images/youtube.png",
            ),
          ),
        ],
      ),
    );
  }
}


class Com_ForthS_Books extends StatefulWidget {
  const Com_ForthS_Books({
    super.key,
  });

  @override
  State<Com_ForthS_Books> createState() => _Com_ForthS_BooksState();
}
Future<void> _openURL(String myUrl) async {
  if (!await launchUrl(Uri.parse(myUrl),
      mode: LaunchMode.externalApplication)) {
    throw Exception('Could not open $myUrl');
  }
}

class _Com_ForthS_BooksState extends State<Com_ForthS_Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "First Semester Books",
          style: kSemestersStyle,
        ),
        backgroundColor: kWidgetsColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [

              Colors.cyan,
              Colors.cyanAccent,
              Colors.blue,

            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Subject(
                          subject: "Digital Fundamental", assetName: "Digital fundamental.pdf"),
                    ),
                  );
                },
                semester: "Digital Fundamental",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Subject(
                          subject: "Computer Fundamental", assetName: "Computer fundamental.pdf"),
                    ),
                  );
                },
                semester: "Computer Fundamental",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text("Alert"),
                      content: const Text("This book have a large size so we store it on telegram bot do you want to open it on telegram ?"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            _openURL('https://t.me/HeratTechnicalInstituteBot/');

                          },
                          child: Text("Ok"),
                        ),
                      ],
                    ),
                  );
                },
                semester: "Islamic culture",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Subject(
                          subject: "MS windows 10", assetName: "MS windows 10.pdf"),
                    ),
                  );
                },
                semester: "Windows",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Subject(
                          subject: "MS office 2016", assetName: "MS office 2016.pdf"),
                    ),
                  );
                },
                semester: "Office",
                image: "lib/images/book.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _openURL(String myUrl) async {
      if (!await launchUrl(Uri.parse(myUrl),
          mode: LaunchMode.externalApplication)) {
        throw Exception('Could not open $myUrl');
      }
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Learning Videos",
          style: kSemestersStyle,
        ),
        backgroundColor: kWidgetsColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [

              Colors.cyan,
              Colors.cyanAccent,
              Colors.blue,

            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq2NoZI4_G2BCoMs80lSeb1X');
                },
                semester: "Digital Fundamental",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq13roqNA-tNa_VrctO4yWEm');
                },
                semester: "Computer Fundamental",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/watch?v=JnzAVlZwea4&list=PLoHsUdMITkq0O4-FD5OM9qXgsq4Xj3T91&index=1&pp=iAQB');
                },
                semester: "Windows",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq0OwWrHLFQFc4T5gDDHplcI');
                },
                semester: "Office",
                image: "lib/images/youtube.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}




