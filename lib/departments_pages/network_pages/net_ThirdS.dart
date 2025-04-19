
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/small_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorNet3S extends StatefulWidget {
  const NavigatorNet3S({super.key});

  @override
  State<NavigatorNet3S> createState() => _NavigatorNet3SState();
}

class _NavigatorNet3SState extends State<NavigatorNet3S> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Com_ThirdS_Books(),
    const Com_ThirdS_Videos(),
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

class Com_ThirdS_Books extends StatefulWidget {
  const Com_ThirdS_Books({
    super.key,
  });

  @override
  State<Com_ThirdS_Books> createState() => _Com_ThirdS_BooksState();
}
Future<void> _openURL(String myUrl) async {
  if (!await launchUrl(Uri.parse(myUrl),
      mode: LaunchMode.externalApplication)) {
    throw Exception('Could not open $myUrl');
  }
}
class _Com_ThirdS_BooksState extends State<Com_ThirdS_Books> {


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
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Subject(
                          subject: "Routing & Switching 1", assetName: "روتینگ سویچینگ ۱ (R & S).pdf"),
                    ),
                  );
                },
                semester: "Routing & Switching 1",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "Java", assetName: "زبان برنامه‌نویسی جاوا.pdf"),
                    ),
                  );
                },
                semester: "Java",
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
                          child: const Text("Ok"),
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
                          subject: "Linux OS", assetName: "سیستم عامل لینوکس.pdf"),
                    ),
                  );
                },
                semester: "Linux OS",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "Wireless Networks", assetName: "شبکه‌های بی‌سیم.pdf"),
                    ),
                  );
                },
                semester: "Wireless Networks",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "System Management 1", assetName: "مدیریت سیستم ۱.pdf"),
                    ),
                  );
                },
                semester: "System Management 1",
                image: "lib/images/book.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Com_ThirdS_Videos extends StatelessWidget {
  const Com_ThirdS_Videos({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq0c2_-VY14QXZkEJ32LYRsE');

              },
              semester: "Routing & Switching 1",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq0iQ283menhs3EaDiGfuodC');

              },
              semester: "Java",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq1112zBTktAuMktl3eqlLdJ');

              },
              semester: "Linux OS",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq1Z4rjMdgTwPoZowL6ZHThp');

              },
              semester: "Wireless Networks",
              image: "lib/images/youtube.png",
            ),
            SemesterButton(
              onTap: () {
                _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq1umPiik4sg_DxvmRJTVb4L');

              },
              semester: "System Management 1",
              image: "lib/images/youtube.png",
            ),
          ],
        ),
      ),
    );
  }
}

