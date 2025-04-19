import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';


class Profile extends StatelessWidget {

  static const String id = "profile";


  const Profile({super.key});
  Future<void> _openURL(String myUrl) async {
    if (!await launchUrl(Uri.parse(myUrl),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open $myUrl');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                // height: 200,
                // width: 350,
                child: const SizedBox(
                  // height: 250,
                  // width: 150,
                  child: CircleAvatar(
                    maxRadius: 80,
                    backgroundImage: AssetImage('lib/images/sahel.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              const Text(
                'Hasib Sahel',
                style: TextStyle(fontSize: 27.0,
                    fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 22.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  'lib/images/telegram.png',
                )),
            title: const Text(
              'Contact me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            onTap: () {
              _openURL('https://t.me/hasibsahel');

            },
          ),
          ListTile(
            leading: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  'lib/images/email.png',
                ),
            ),
            title: const Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text("Alert"),
                  content: const Text("Click on the OK button to copy my email"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(text: "hasibsahel001@gmail.com"));
                        Navigator.pop(context, "Email was copied");
                      },
                      child: Text("Ok"),
                    ),
                  ],
                ),
              );

            },
          ),
          ListTile(
            leading: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "lib/images/facebook.png",
              ),
            ),
            title: const Text(
              'Follow me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            onTap: (){
              _openURL('https://www.facebook.com/share/12DppC4h1g2/');
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 50,
              width: 40,
              child: Image.asset(
                "lib/images/github.png",
              ),
            ),
            title: const Text(
              'Github',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            onTap: (){
              _openURL('https://github.com/hasibsahel001');
            },
          ),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.all(20),
            height: 2,
            width: double.infinity,
            color: Colors.black,
            // child: Divider(
            //   thickness: 1,
            // ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                // height: 200,
                // width: 350,
                child: const SizedBox(
                  // height: 250,
                  // width: 150,
                  child: CircleAvatar(
                    maxRadius: 80,
                    backgroundImage: AssetImage('lib/images/mmad.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              const Text(
                'Mohammmad Majidi',
                style: TextStyle(fontSize: 27.0,
                    fontFamily: 'Pacifico',
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Telegram Bot Developer',
                style: TextStyle(fontSize: 22.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  'lib/images/telegram.png',
                )),
            title: const Text(
              'Contact me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            onTap: () {
              _openURL('https://t.me/Mohammad_herati');
            },
          ),

          ListTile(
            leading: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "lib/images/facebook.png",
              ),
            ),
            title: const Text(
              'Follow me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            onTap: (){
              _openURL('https://www.facebook.com/share/mohammad_.twana/');
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "lib/images/insta2.png",
              ),
            ),
            title: const Text(
              'Follow me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            onTap: (){
              _openURL('https://www.facebook.com/share/mohammad_.twana/');
            },
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                'App Version 1.0.0',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
