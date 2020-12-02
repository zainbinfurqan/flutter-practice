import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'components/Buttons/FlatButton.dart';
import 'components/Buttons/RaisedButton.dart';
import 'components/Buttons/RaisedButtonWithParams.dart';
import 'components/Buttons/IconButton.dart';
import 'components/InputFields/CheckFld.dart';
import 'components/InputFields/RadioFld.dart';
import 'components/InputFields/TextInputFld.dart';
import 'screens/cardList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/cardList',
      routes: {
        '/flatbtn': (context) => FlatButtonEX(),
        '/raisedbtn': (context) => RaisedButtonEX(),
        '/raisedbtnwithparam': (context) => RaisedButtonWithParamsEX(),
        '/iconbtn': (context) => IconButtonEx(),
        '/checkfld': (context) => CheckFld(),
        '/radiofld': (context) => RadioFld(),
        '/textinputfld': (context) => TextInputfld(),
        '/cardList': (context) => CardList(),
      },
      builder: EasyLoading.init(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
