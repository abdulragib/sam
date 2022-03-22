import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(height:30),


            Text("Name                           Date and Time"),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("     Piyush     ${DateTime.now()}"),
            ),
          ]
        )
      ),
    );
  }
}
