
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/small_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorData4S extends StatefulWidget {
  const NavigatorData4S({super.key});

  @override
  State<NavigatorData4S> createState() => _NavigatorData4SState();
}

class _NavigatorData4SState extends State<NavigatorData4S> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Com_FirstS_Books(),
    const Com_FirstS_Videos(),
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








class Com_FirstS_Books extends StatefulWidget {
  const Com_FirstS_Books({
    super.key,
  });

  @override
  State<Com_FirstS_Books> createState() => _Com_FirstS_BooksState();
}
Future<void> _openURL(String myUrl) async {
  if (!await launchUrl(Uri.parse(myUrl),
      mode: LaunchMode.externalApplication)) {
    throw Exception('Could not open $myUrl');
  }
}

class _Com_FirstS_BooksState extends State<Com_FirstS_Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
                          subject: "PL/SQL", assetName: "PLSQL.pdf"),
                    ),
                  );
                },
                semester: "PL/SQL",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Subject(
                          subject: "Advance Web (PHP)", assetName: "وب پیشرفته با (PHP).pdf"),
                    ),
                  );
                },
                semester: "Advance Web (PHP)",
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
                          subject: "Database Management 2", assetName: "مدیریت دیتابیس ۲.pdf"),
                    ),
                  );
                },
                semester: "Database Management 2",
                image: "lib/images/book.png",
              ),
              SemesterButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Subject(
                          subject: "Project Management", assetName: "مدیریت پروژه.pdf"),
                    ),
                  );
                },
                semester: "Project Management",
                image: "lib/images/book.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Com_FirstS_Videos extends StatelessWidget {
  const Com_FirstS_Videos({super.key});

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
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq3PTVCYWqY7uzANl3hMIfRR');
                },
                semester: "PL/SQL",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq10kmTYMK-oQLRfkEuDn6wi');
                },
                semester: "Advance Web (PHP)",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq2T3qE0E6wF1yDZcvEVcg0N');
                },
                semester: "Database Management 2",
                image: "lib/images/youtube.png",
              ),
              SemesterButton(
                onTap: () {
                  _openURL('https://www.youtube.com/playlist?list=PLoHsUdMITkq0XQZzDmiaDNKaBZ4ZRV4Fb');
                },
                semester: "Project Management",
                image: "lib/images/youtube.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//##########################################################################
//
// class DigitalF extends StatefulWidget {
//   const DigitalF({super.key});
//
//   @override
//   State<DigitalF> createState() => _DigitalFState();
// }
//
// class _DigitalFState extends State<DigitalF> {
//   int totalPages = 0, currentPage = 1;
//   late PdfControllerPinch pdfControllerPinch;
//
//   @override
//   void initState() {
//     super.initState();
//     pdfControllerPinch = PdfControllerPinch(
//       document: PdfDocument.openAsset(
//           "lib/images/Computer fundamental.pdf"),
//     );
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BuildUI();
//   }
//
//   Widget BuildUI() {
//     return Column(
//       children: [
//         Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("Total Pages: ${totalPages}"),
//             IconButton(
//               onPressed: () {
//                 pdfControllerPinch.previousPage(
//                     duration: const Duration(milliseconds: 300),
//                     curve: Curves.linear);
//               },
//               icon: const Icon(Icons.arrow_back),
//             ),
//             Text("Current Page: ${currentPage}"),
//             IconButton(
//               onPressed: () {
//                 pdfControllerPinch.nextPage(
//                     duration: const Duration(milliseconds: 300),
//                     curve: Curves.linear);
//               },
//               icon: Icon(Icons.arrow_forward),
//             ),
//           ],
//         ),
//         pdfView1(),
//       ],
//     );
//   }
//   Widget pdfView1() {
//     return Expanded(
//       child: PdfViewPinch(
//         controller: pdfControllerPinch,
//         onDocumentLoaded: (doc) {
//           setState(() {
//             totalPages = doc.pagesCount;
//           });
//         },
//         onPageChanged: (page) {
//           setState(() {
//             currentPage = page;
//           });
//         },
//       ),
//     );
//   }
// }

