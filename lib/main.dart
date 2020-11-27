import 'package:flutter/material.dart';
import 'components/Buttons/FlatButton.dart';
import 'components/Buttons/RaisedButton.dart';
import 'components/Buttons/RaisedButtonWithParams.dart';
import 'components/Buttons/IconButton.dart';

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
      initialRoute: '/iconbtn',
      routes: {
        '/flatbtn': (context) => FlatButtonEX(),
        '/raisedbtn': (context) => RaisedButtonEX(),
        '/raisedbtnwithparam': (context) => RaisedButtonWithParamsEX(),
        '/iconbtn': (context) => IconButtonEx(),
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class HomePage extends State<MyApp> {
//   // String name = '';
//   // int count = 0;
//   String fName = '';
//   String lName = '';
//   String email = '';
//   String phoneNo = '';
//   bool showData = false;
//   Map<String, String> userData = {};

//   void handleSubmit() {
//     setState(() {
//       showData = true;
//     });
//     print(fName);
//     print(lName);
//     print(email);
//     print(phoneNo);
//   }

// void handleChangeTitle(nameVal) {
//   setState(() {
//     name = nameVal;
//   });
// }

// void handleAdd() {
//   setState(() {
//     count++;
//     print("count $count");
//   });
// }

// void handleSub() {
//   setState(() {
//     count--;
//   });
// }

// @override
// Widget build(BuildContext context) {
//   return new Scaffold(
//     appBar: new AppBar(
//       title: new Text('Hello every one'),
//     ),
//     body: new Container(
//       padding: new EdgeInsets.all(10),
//       child: new Center(
//         child: new Column(
//           children: <Widget>[
// new TextField(
//   decoration: new InputDecoration(
//       labelText: 'Enter first name',
//       hintText: "john",
//       icon: new Icon(Icons.person)),
//   autocorrect: true,
//   autofocus: true,
//   keyboardType: TextInputType.text,
//   onChanged: (value) {
//     setState(() {
//       fName = value;
//     });
//   },
// ),
// new TextField(
//   decoration: new InputDecoration(
//       labelText: 'Enter last name',
//       hintText: "john",
//       icon: new Icon(Icons.person)),
//   autocorrect: true,
//   autofocus: true,
//   keyboardType: TextInputType.text,
//   onChanged: (value) {
//     setState(() {
//       lName = value;
//     });
//   },
// ),
// new TextField(
//   decoration: new InputDecoration(
//       labelText: 'Enter email',
//       hintText: "example@domin.com",
//       icon: new Icon(Icons.email)),
//   autocorrect: true,
//   autofocus: true,
//   keyboardType: TextInputType.emailAddress,
//   onChanged: (value) {
//     setState(() {
//       email = value;
//     });
//   },
// ),
// new TextField(
//   decoration: new InputDecoration(
//       labelText: 'Enter email',
//       hintText: "03022******",
//       icon: new Icon(Icons.phone)),
//   autocorrect: true,
//   autofocus: true,
//   keyboardType: TextInputType.phone,
//   onChanged: (value) {
//     setState(() {
//       phoneNo = value;
//     });
//   },
// ),
// RaisedButton(
// onPressed: handleSubmit, child: new Text("Submit data")),
// new Text(showData ? "First Name: $fName" : "First Name"),
// new Text(showData ? "Last Name: $lName" : "Last Name"),
// new Text(showData ? "Email: $email" : "Email"),
// new Text(showData ? "Phone: $phoneNo" : "Phone"),
// new IconButton(icon: new Icon(Icons.add), onPressed: handleAdd),
// new Text(
//   count.toString(),
//   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
// ),
// new IconButton(icon: new Icon(Icons.remove), onPressed: handleSub)
// new RaisedButton(
//   onPressed: () => handleChangeTitle('zain ahmed'),
//   child: new Text('Click me'),
// ),
// new FlatButton(
//   onPressed: () => handleChangeTitle('faraz ahmed'),
//   child: new Text('Click me'),
// )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
