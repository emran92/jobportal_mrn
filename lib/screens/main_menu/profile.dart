import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:jobportal_flutter_mrn/widgets/header.dart';
import 'package:jobportal_flutter_mrn/widgets/size_config.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: header(context, titleText: 'Profile'),
      body: Container(
        height: SizeConfig.blockSizeVertical * 100,
        width: SizeConfig.blockSizeHorizontal * 100,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: new BoxDecoration(
                        border: new Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid),
                        color: Color(0xFF122F51),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                      ),
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: <Widget>[
                          Text('This Month',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: new BoxDecoration(
                        border: new Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                      ),
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '  All Time  ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0,left: 10.0),
                        child: Container(
                          height: 130.0,
                          child: GradientCard(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                              colors: [const Color(0xFF0575E6), const Color(0xFF021B79)], // whitish to gray
                            ),
                            shadowColor: Gradients.deepSpace.colors.last.withOpacity(0.80),
                            elevation: 10,
                            child: ListTile(
                              title: Text(
                                '13',
                                style: TextStyle(fontSize: 45.0,color: Colors.white),
                              ),
                              subtitle: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Jobs Applied',
                                            style: TextStyle(fontSize: 15.0,color: Colors.white),
                                          ),
                                        ),
                                        Icon(FontAwesomeIcons.stickyNote,size: 25.0,color: Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0,left: 10.0),
                        child: Container(
                          height: 130.0,
                          child: GradientCard(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                              colors: [const Color(0xFFc31432), const Color(0xFF240b36)], // whitish to gray
                            ),
                            shadowColor: Gradients.deepSpace.colors.last.withOpacity(0.80),
                            elevation: 10,
                            child: ListTile(
                              title: Text(
                                '13',
                                style: TextStyle(fontSize: 45.0,color: Colors.white),
                              ),
                              subtitle: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Emailed Resume',
                                            style: TextStyle(fontSize: 15.0,color: Colors.white),
                                          ),
                                        ),
                                        Icon(FontAwesomeIcons.paperPlane,size: 25.0,color: Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0,left: 10.0),
                        child: Container(
                          height: 130.0,
                          child: GradientCard(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                              colors: [const Color(0xFFfc4a1a), const Color(0xFFf7b733)], // whitish to gray
                            ),
                            shadowColor: Gradients.deepSpace.colors.last.withOpacity(0.80),
                            elevation: 10,
                            child: ListTile(
                              title: Text(
                                '9',
                                style: TextStyle(fontSize: 45.0,color: Colors.white),
                              ),
                              subtitle: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Viewed your Application',
                                            style: TextStyle(fontSize: 15.0,color: Colors.white),
                                          ),
                                        ),
                                        Icon(FontAwesomeIcons.solidEye,size: 25.0,color: Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0,left: 10.0),
                        child: Container(
                          height: 130.0,
                          child: GradientCard(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                              colors: [const Color(0xFF06beb6), const Color(0xFF48b1bf)], // whitish to gray
                            ),
                            shadowColor: Gradients.deepSpace.colors.last.withOpacity(0.80),
                            elevation: 10,
                            child: ListTile(
                              title: Text(
                                '7',
                                style: TextStyle(fontSize: 45.0,color: Colors.white),
                              ),
                              subtitle: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Employers Followed',
                                            style: TextStyle(fontSize: 15.0,color: Colors.white),
                                          ),
                                        ),
                                        Icon(FontAwesomeIcons.userPlus,size: 25.0,color: Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0,left: 10.0),
                        child: Container(
                          height: 130.0,
                          child: GradientCard(
                            gradient: Gradients.cosmicFusion,
                            shadowColor: Gradients.deepSpace.colors.last.withOpacity(0.80),
                            elevation: 10,
                            child: ListTile(
                              title: Text(
                                '5',
                                style: TextStyle(fontSize: 45.0,color: Colors.white),
                              ),
                              subtitle: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Interview Invitation',
                                            style: TextStyle(fontSize: 15.0,color: Colors.white),
                                          ),
                                        ),
                                        Icon(FontAwesomeIcons.handshake,size: 25.0,color: Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0,left: 10.0),
                        child: Container(
                          height: 130.0,
                          child: GradientCard(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                              colors: [const Color(0xFF232526), const Color(0xFF414345)], // whitish to gray
                            ),
                            shadowColor: Gradients.deepSpace.colors.last.withOpacity(0.80),
                            elevation: 10,
                            child: ListTile(
                              title: Text(
                                '5',
                                style: TextStyle(fontSize: 45.0,color: Colors.white),
                              ),
                              subtitle: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            'Messages from Employers',
                                            style: TextStyle(fontSize: 15.0,color: Colors.white),
                                          ),
                                        ),
                                        Icon(FontAwesomeIcons.envelope,size: 25.0,color: Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          elevation: 10,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(20.0)), //this right here
                    child: Container(
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Manage Resume',style: TextStyle(color: Colors.black,fontSize: 20.0),),
                                IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                border: new Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: SizedBox(
                                width: 320.0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: Icon(FontAwesomeIcons.edit),
                                    title: Text(
                                      "Edit Resume",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Container(
                              decoration: new BoxDecoration(
                                border: new Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: SizedBox(
                                width: 320.0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: Icon(FontAwesomeIcons.eyeSlash),
                                    title: Text(
                                      "View Resume",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Container(
                              decoration: new BoxDecoration(
                                border: new Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: SizedBox(
                                width: 320.0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: Icon(FontAwesomeIcons.upload),
                                    title: Text(
                                      "Upload Resume",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          },
          child: Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(
              FontAwesomeIcons.cogs,
              color: Colors.white,
              size: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
