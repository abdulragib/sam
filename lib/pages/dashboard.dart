import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:sam/pages/camera_page.dart';
import 'package:sam/pages/history.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: const Text("DASHBOARD"),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.alarm_add_sharp),
                tooltip: 'Show Snackbar',
                onPressed: null,
              ),
            ]),
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 58.0, left: 88.0, right: 88.0, bottom: 48.0),
                    child: Expanded(
                        child: Column(children: <Widget>[
                          Text("Piyush",style:TextStyle(fontSize:25)),
                        ])),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 32.0, left: 10.0, right: 10.0, bottom: 32.0),
                      child: FlatButton(
                          onPressed: () async {
                            await availableCameras().then(
                                  (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CameraPage(cameras: value,),
                                ),
                              ),
                            );
                        },
                        child: Expanded(child: Text("Punch Attendance"),),),
                    ),),
                  SizedBox(width: 10.0),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 32.0, left: 30.0, right: 30.0, bottom: 32.0),
                      child: FlatButton(
                        onPressed:(){
                          print("hello world");
                        },
                        child: Expanded(
                          child:
                          Text("Location"),
                        ),
                      ),
                    ),
                  ),

                ],),
              SizedBox(
                height:30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 38.0, left: 60.0, right: 60.0, bottom: 38),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => history()),
                          ); },
                          child: Expanded(child: Text("History"))),
                    ),),


                ],)
            ],
          ),
        ),
      ),
    );
  }
}
