import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tveta/departments_pages/database_pages/database_semesters.dart';
import 'package:tveta/departments_pages/network_pages/network_semesters.dart';
import 'package:tveta/other_pages/small_widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "TVETA",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
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
        child: ListView(
          children: [

            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "TVETA on Social Media",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SocialMediaWidget(),
            Container(
              margin: const EdgeInsets.all(20),
              height: 2,
              width: double.infinity,
              color: Colors.black,
              // child: Divider(
              //   thickness: 1,
              // ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Computer Science Departments",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: DepartmentWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NetworkSemesters(
                        sText: "First Semester",
                        onTap: () {},
                      ),
                    ),
                  );
                  // print("computer button was pressed");
                },
                image: "lib/images/network.png",
                sText: "Network Department",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: DepartmentWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DatabaseSemesters(
                        sText: "First Semester",
                        onTap: () {},
                      ),
                    ),
                  );
                  // print("computer button was pressed");
                },
                image: "lib/images/database.png",
                sText: "Database Department",
              ),
            ),


          ],
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }
}
