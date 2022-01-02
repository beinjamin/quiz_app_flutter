import 'package:flutter/material.dart';
import 'package:quiz_app/camera.dart';
import 'package:quiz_app/gallery.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.black])),
                child: Center(
                    child: CircleAvatar(
                  radius: 100,
                  backgroundImage: ExactAssetImage('images/logo.jpg'),
                )),
              ),
              ListTile(
                  title: Text(
                    'Quiz',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new Quiz()));
                  }),
              Divider(color: Colors.pink),
              ListTile(
                  title: Text(
                    'Meteo',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Weather()));
                  }),
              Divider(color: Colors.pink),
              ListTile(
                  title: Text(
                    'Gallery',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Gallery()));
                  }),
              Divider(color: Colors.pink),
              ListTile(
                  title: Text(
                    'Camera',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CameraPage()));
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
            child: Text(
          'Bonjour Jaures',
          style: TextStyle(fontSize: 22, color: Colors.deepOrange),
          textAlign: TextAlign.center,
        )),
      ),
    ));
  }
}
