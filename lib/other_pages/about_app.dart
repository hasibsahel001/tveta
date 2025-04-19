import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tveta/other_pages/constants.dart';


class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  static const kWidgets = <Widget>[
    MyContainer(
        height: 270,
        width: 270,
        lottie: 'lib/images/development.json',
        data:
            "This Application was created by the students of the Network Department in Herat Technical and Vocational Institute. to allow students use all computer science books and videos in one application"),
    MyContainer(
        height: 400,
        width: 400,
        lottie: 'lib/images/robot.json',
        data:
            "Some books like (Islamic culture) had large size and we had to store them to our telegram robot you can download books videos from our robot, you can go to our telegram bot from the drawer section."),
    MyContainer(
        height: 320,
        width: 320,
        lottie: 'lib/images/sorry.json',
        data:
            "If you see some bugs in our app, we sincerely apologize from you, we would do our best if we had some more time, but we didn't have time to make this app better than now."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "About this application",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kWidgetsColor,
      ),
      body: Center(
        child: DefaultTabController(
          length: kWidgets.length,
          // Use a Builder here, otherwise `DefaultTabController.of(context)` below
          // returns null.
          child: Builder(
            builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const TabPageSelector(),
                  Expanded(
                    child: IconTheme(
                      data: IconThemeData(
                        size: 128.0,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: const TabBarView(children: kWidgets),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String data;
  final String lottie;
  final int height;
  final int width;
  const MyContainer({
    super.key,
    required this.data,
    required this.lottie,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 270,
            width: 270,
            child: LottieBuilder.asset(lottie),
          ),
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                data,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: LottieBuilder.asset('lib/images/vector.json'),
          ),
        ],
      ),
    );
  }
}
