
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tveta/departments_pages/network_pages/net_FirstS.dart';
import 'package:tveta/departments_pages/network_pages/net_ForthS.dart';
import 'package:tveta/departments_pages/network_pages/net_SecondS.dart';
import 'package:tveta/departments_pages/network_pages/net_ThirdS.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/small_widgets.dart';


class NetworkSemesters extends StatelessWidget {
  final String sText;
  final Function()? onTap;
  const NetworkSemesters({super.key, required this.sText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kWidgetsColor,
        title: const Text("Computer Science < Network >", style: kSemestersStyle),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [

              Colors.cyan,
              Colors.cyanAccent,

              Colors.white12,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            LottieBuilder.asset('lib/images/network.json'),
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
                    builder: (context) => NavigatorNet2S(),

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
                    builder: (context) => NavigatorNet3S(),
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
                    builder: (context) => NavigatorNet4S(),
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
