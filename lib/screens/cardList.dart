import 'package:demoapp/components/custom_animation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(new MaterialApp(
    home: new CardList(),
  ));
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false
    ..customAnimation = CustomAnimation();
}

class CardList extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<CardList> {
  List posts = new List();

  void _getPosts() async {
    EasyLoading.show();
    const url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        posts = jsonDecode(response.body);
        EasyLoading.dismiss();
      });
    }
  }

  @override
  void initState() {
    print("loading");
    _getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Card List'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Expanded(
                  child: new ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (BuildContext context, int index) {
                        var data = posts[index];
                        return new Row(
                          children: <Widget>[
                            new Expanded(
                              flex: 1,
                              child: new Card(
                                child: new Container(
                                  padding: new EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.lightBlue,
                                        spreadRadius: 1,
                                        blurRadius: 0.5,
                                      )
                                    ],
                                  ),
                                  child: new Column(
                                    children: <Widget>[
                                      new Image.asset(
                                          'assets/images/apple-1.png'),
                                      new Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            child: new Text(
                                          data['title'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17.00),
                                        )),
                                      ),
                                      new Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: new Row(
                                            children: <Widget>[
                                              new Expanded(
                                                child: new IconButton(
                                                  icon: new Icon(Icons.favorite,
                                                      color: data['id'] == 1
                                                          ? Colors.red
                                                          : Colors.grey),
                                                ),
                                              ),
                                              new Expanded(
                                                child: new IconButton(
                                                  icon: new Icon(Icons.comment),
                                                ),
                                              ),
                                              new Expanded(
                                                child: new IconButton(
                                                  icon: new Icon(Icons.share),
                                                ),
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
