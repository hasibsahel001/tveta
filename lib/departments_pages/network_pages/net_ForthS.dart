
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/small_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorNet4S extends StatefulWidget {
  const NavigatorNet4S({super.key});

  @override
  State<NavigatorNet4S> createState() => _NavigatorNet4SState();
}

class _NavigatorNet4SState extends State<NavigatorNet4S> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Com_ForthS_Books(),
    Com_ForthS_Videos(),
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
        animationDuration: Duration(milliseconds: 300),
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

class _Com_ForthS_BooksState extends State<Com_ForthS_Books> {
  Future<void> _openURL(String myUrl) async {
    if (!await launchUrl(Uri.parse(myUrl),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open $myUrl');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "Forth Semester Books",
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
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "Routing & Switching 2", assetName: "روتینگ و سویچینگ ۲.pdf"),
                    ),
                  );
                },
                semester: "Routing & Switching 2",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "Network Security", assetName: "امنیت شبکه‌های کمپیوتری.pdf"),
                    ),
                  );
                },
                semester: "Network Security",
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
                      builder: (context) => const Subject(
                          subject: "Advance Switching", assetName: "سویچینگ پیشرفته .pdf"),
                    ),
                  );
                },
                semester: "Advance Switching",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "Project Management", assetName: "مدیریت پروژه.pdf"),
                    ),
                  );
                },
                semester: "Project Management",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "System Management 2", assetName: "مدیریت سیستم.pdf"),
                    ),
                  );
                },
                semester: "System Management 2",
                image: "lib/images/book.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Com_ForthS_Videos extends StatelessWidget {
  const Com_ForthS_Videos({super.key});
  Future<void> _openURL(String myUrl) async {
    if (!await launchUrl(Uri.parse(myUrl),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open $myUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
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
        child: Column(
          children: [
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq1xbRPVKUFwvup0_JwnvB9t');

              },
              semester: "Routing & Switching 2",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq3xkHkatjH9L4OScEsIHhLz');

              },
              semester: "Network Security",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq1iJ_o0ryOlPSF33eb2Ca5w');

              },
              semester: "Advance Switching",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq0XQZzDmiaDNKaBZ4ZRV4Fb');

              },
              semester: "Project Management",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq1heueanntZB8Uli26FCR9v');

              },
              semester: "System Management 2",
              image: "lib/images/youtube.png",
            ),
          ],
        ),
      ),
    );
  }
}

