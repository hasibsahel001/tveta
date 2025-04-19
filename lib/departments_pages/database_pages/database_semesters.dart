import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tveta/departments_pages/database_pages/data_ForthS.dart';
import 'package:tveta/departments_pages/database_pages/data_SecondS.dart';
import 'package:tveta/departments_pages/database_pages/data_ThirdS.dart';
import 'package:tveta/departments_pages/network_pages/net_FirstS.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/small_widgets.dart';


class DatabaseSemesters extends StatelessWidget {
  final String sText;
  final Function()? onTap;
  const DatabaseSemesters(
      {super.key, required this.sText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kWidgetsColor,
        title:
            const Text("Computer Science < Database >", style: kSemestersStyle),
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
            SizedBox(
              height: 250,
              width: 250,
              child: LottieBuilder.asset('lib/images/database.json'),
            ),
            const SizedBox(height: 20,),
            SemesterButton(
              semester: "First Semester",
              image: "lib/images/one.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavigatorNet1S(),
                  ),
                );
              },
            ),
            SemesterButton(
              semester: "Second Semester",
              image: "lib/images/two.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavigatorData2S(),
                  ),
                );
              },
            ),
            SemesterButton(
              semester: "Third Semester",
              image: "lib/images/three.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigatorData3S(),
                  ),
                );
              },
            ),
            SemesterButton(
              semester: "Forth Semester",
              image: "lib/images/four.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigatorData4S(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
