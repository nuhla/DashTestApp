import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    home: new StarWarsData(),
  ));
}

class StarWarsData extends StatefulWidget {
  @override
  StarWarsDataState createState() => StarWarsDataState();
}

class StarWarsDataState extends State<StarWarsData> {
  final String url = "http://162.247.76.211:3000/UpdateNotification";

  Future<String> sendData() async {
    http.Response res = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "savedToDb": false,
        "deviceId": '7e7903f24583c36f',
        "data": [
          {
            "ModelID": 8,
            "TopicID": 22,
            "ArticleID": 38,
            "TimesViewed": 20,
            "DurationViewd": 5,
            "DateViewd": '2020-05-11 20:16:27.278158'
          },
          {
            "ModelID": 8,
            "TopicID": 22,
            "ArticleID": 35,
            "TimesViewed": 20,
            "DurationViewd": 5,
            "DateViewd": '2020-05-11 20:16:27.278158'
          }
        ]
      }),
    );
    if (res.statusCode == 200) {
      print("done");
      return "done";
    } else {
      print("not done");
      return "not don";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data"),
          onPressed: sendData,
        ),
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//         // This makes the visual density adapt to the platform that you run
//         // the app on. For desktop platforms, the controls will be smaller and
//         // closer together (more dense) than on mobile platforms.
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  sendData() async {
    await http.post(
        Uri.encodeFull("http://162.247.76.211:3000/UpdateNotifiCount"),
        headers: <String, String>{
          "Conttent-Type": "application/json; chart-UTF-8",
        },
        body: "ddddddddddddddddddddddddddd");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data"),
          onPressed: sendData,
        ),
      ),
    );
  }
  //   // This method is rerun every time setState is called, for instance as done
  //   // by the _incrementCounter method above.
  //   //
  //   // The Flutter framework has been optimized to make rerunning build methods
  //   // fast, so that you can just rebuild anything that needs updating rather
  //   // than having to individually change instances of widgets.
  //   return Scaffold(
  //     appBar: AppBar(
  //       // Here we take the value from the MyHomePage object that was created by
  //       // the App.build method, and use it to set our appbar title.
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       // Center is a layout widget. It takes a single child and positions it
  //       // in the middle of the parent.
  //       child: Column(
  //         // Column is also a layout widget. It takes a list of children and
  //         // arranges them vertically. By default, it sizes itself to fit its
  //         // children horizontally, and tries to be as tall as its parent.
  //         //
  //         // Invoke "debug painting" (press "p" in the console, choose the
  //         // "Toggle Debug Paint" action from the Flutter Inspector in Android
  //         // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
  //         // to see the wireframe for each widget.
  //         //
  //         // Column has various properties to control how it sizes itself and
  //         // how it positions its children. Here we use mainAxisAlignment to
  //         // center the children vertically; the main axis here is the vertical
  //         // axis because Columns are vertical (the cross axis would be
  //         // horizontal).
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text(
  //             'You have pushed the button this many times:',
  //           ),
  //           Text(
  //             '$_counter',
  //             style: Theme.of(context).textTheme.headline4,
  //           ),
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: Icon(Icons.add),
  //     ), // This trailing comma makes auto-formatting nicer for build methods.
  //   );
  // }
}
