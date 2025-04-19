import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tveta/other_pages/Profile.dart';
import 'package:tveta/other_pages/about_app.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _openURL(String Myurl) async {
  if (!await launchUrl(Uri.parse(Myurl))) {
    throw Exception('Could not open $Myurl');
  }
}

class SocialMediaWidget extends StatelessWidget {
  static const String id = "social_media_widget";

  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            Social(
              image: "lib/images/youtube.png",
              onTap: () {
                _openURL('https://www.youtube.com/@tveta.computer');
              },
            ),
            Social(
              image: "lib/images/telegram.png",
              onTap: () {
                _openURL('https://t.me/HTI_1384');
              },
            ),
            Social(
              image: "lib/images/facebook.png",
              onTap: () {
                _openURL('https://www.facebook.com/tveta.job/following/');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Social extends StatelessWidget {
  final String image;
  final Function()? onTap;
  const Social({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(image, width: 55, height: 55),
        ),
      ),
    );
  }
}

class SemesterButton extends StatelessWidget {
  static const String id = "semester_button";

  final String semester;
  final String image;
  final Function()? onTap;

  const SemesterButton({
    super.key,
    required this.semester,
    required this.image,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
      child: Material(
        elevation: 5,
        color: Colors.white,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: double.infinity,
          height: 77,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 55, width: 55, child: Image.asset(image)),
              const SizedBox(width: 17),
              Text(
                semester,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  static const String id = "MyButton";

  final String text;
  final Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: kWidgetsColor,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: onTap,
        minWidth: 340,
        height: 60,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

//

class DrawerTile extends StatelessWidget {
  static const String id = "drawTile";

  final Function()? onTap;
  final String title;
  final Widget leading;
  const DrawerTile({
    super.key,
    required this.onTap,
    required this.title,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      leading: leading,
      onTap: onTap,
    );
  }
}

class DrawerWidget extends StatefulWidget {
  static const String id = "drawer_widget";

  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final String downloadUrl = "https://drive.google.com/uc?export=download&id=1sWL_QLddVYqGZUq5wUvV251RArmJFZiG";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: kWidgetsColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("lib/images/user.jpg"),
                    radius: 36,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  "Dear Student",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                const Text(
                  "hasibsahel001@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ),
          DrawerTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: "Home",
            leading: const Icon(Icons.home, color: kWidgetsColor),
          ),
          DrawerTile(
            onTap: () {
              showDialog(
                context: context,
                builder:
                    (BuildContext context) => SimpleDialog(
                      title: const Text('Choose one'),
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(
                            Icons.telegram,
                            color: Colors.blue,
                          ),
                          title: const Text('Copilot Telegram Bot'),
                          onTap: () {
                            _openURL('https://t.me/CopilotOfficialBot');
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.web_sharp,
                            color: Colors.blue,
                          ),
                          title: const Text('ChatGPT Website'),
                          onTap: () {
                            _openURL('https://chatgpt.com/');
                          },
                        ),
                      ],
                    ),
              ).then((returnValue) {
                if (returnValue != null && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You Clicked: $returnValue'),
                      action: SnackBarAction(label: 'Ok', onPressed: () {}),
                    ),
                  );
                }
              });
            },
            title: "Chat with AI",
            leading: const Icon(Icons.chat_rounded, color: kWidgetsColor),
          ),
          DrawerTile(
            onTap: () {
              _openURL('https://t.me/HeratTechnicalInstituteBot/');
            },
            title: "Telegram Bot",
            leading: const Icon(Icons.telegram, color: kWidgetsColor),
          ),
          DrawerTile(
            onTap: () {
              showDownloadPopup(context, downloadUrl);
            },
            title: "Share",
            leading: const Icon(Icons.share, color: kWidgetsColor),
          ),
          DrawerTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            title: "About us",
            leading: const Icon(Icons.person, color: kWidgetsColor),
          ),
          DrawerTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutApp()),
              );
            },
            title: "About app",
            leading: const Icon(Icons.adb, color: kWidgetsColor),
          ),
          DrawerTile(
            onTap: ()
              {

                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text("Alert"),
                    content: const Text("Do you want to exit the app ?"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          SystemNavigator.pop();
                        },
                        child: Text("OK"),
                      ),

                    ],
                  ),
                );
              },

            title: "Exit app",
            leading: const Icon(Icons.exit_to_app, color: kWidgetsColor),
          ),
        ],
      ),
    );
  }
}

class DepartmentWidget extends StatelessWidget {
  final String image;
  final String sText;
  final Function()? onTap;
  const DepartmentWidget({
    super.key,
    required this.image,
    required this.onTap,
    required this.sText,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: onTap,
        minWidth: double.infinity,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(height: 115, width: 115, child: Image.asset(image)),
            Text(
              sText,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppbarWidget extends StatelessWidget {
  static const String id = "appBar_widget";

  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            // first inkwell
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(CupertinoIcons.bars),
            ),
          ),
        ],
      ),
    );
  }
}

class Subject extends StatelessWidget {
  static const String id = "subject";

  final String subject;
  final String assetName;
  const Subject({super.key, required this.subject, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Text(subject)),
      body: SfPdfViewer.asset("lib/pdf/" + assetName),
    );
  }
}

void showDownloadPopup(BuildContext context, String url) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('لینک دانلود برنامه'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectableText(url),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: url));
                Navigator.of(context).pop(); // بستن پاپ‌آپ
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('لینک دانلود برنامه کپی شد ✅'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: Icon(Icons.copy),
              label: Text('کپی لینک'),
            ),
          ],
        ),
      );
    },
  );
}
