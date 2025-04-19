
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/small_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher.dart';
class NavigatorData3S extends StatefulWidget {
  const NavigatorData3S({super.key});

  @override
  State<NavigatorData3S> createState() => _NavigatorData3SState();
}

class _NavigatorData3SState extends State<NavigatorData3S> {
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
          "Third Semester Books",
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
                      builder: (context) => const Subject(
                          subject: "Web Design", assetName: "وب دیزاین.pdf"),
                    ),
                  );
                },
                semester: "Web Design",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "Data Management", assetName: "مدیریت دیتا.pdf"),
                    ),
                  );
                },
                semester: "Data Management",
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
                          subject: "Java Programming", assetName: "زبان برنامه‌نویسی جاوا.pdf"),
                    ),
                  );
                },
                semester: "Java Programming",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Subject(
                          subject: "Database Development 2", assetName: "توسعه دیتابیس ۲ (Oracle).pdf"),
                    ),
                  );
                },
                semester: "Database Development 2",
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
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq15Po9SWFrXo1TYcsRPYojk');
                },
                semester: "Web Design",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq2duS12XMgPqQmgxJWyrERz');
                },
                semester: "Data Management",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq2Mkr3ssRZxYvBRCzXrmvL9');
                },
                semester: "Java Programming",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq21eITk6NBYKDpNwbaDnLIe');
                },
                semester: "Database Development 2",
                image: "lib/images/youtube.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

