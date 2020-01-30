import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/general_search.dart';
import 'package:jobportal_flutter_mrn/widgets/header.dart';

class MoreSettings extends StatefulWidget {
  @override
  _MoreSettingsState createState() => _MoreSettingsState();
}

class _MoreSettingsState extends State<MoreSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: 'More'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              FontAwesomeIcons.cog,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Color(0XFF2EDB81),
                            padding: const EdgeInsets.all(15.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            'Manage Resume',
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              FontAwesomeIcons.stickyNote,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Color(0XFF196DC3),
                            padding: const EdgeInsets.all(15.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            'Applied Jobs',
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              FontAwesomeIcons.bookmark,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Color(0XFFEE4D43),
                            padding: const EdgeInsets.all(15.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            'Favorites Search',
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              FontAwesomeIcons.userPlus,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Color(0XFF485867),
                            padding: const EdgeInsets.all(15.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            'Followed Employers',
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              FontAwesomeIcons.fire,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.red,
                            padding: const EdgeInsets.all(15.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            'Followed Jobs',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              FontAwesomeIcons.info,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Color(0XFF35FFFD),
                            padding: const EdgeInsets.all(15.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            'Application Version',
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 360.0,
              child: Row(children: <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                ),
                Text(" Job Search "),
                Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                ),
              ]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>JobSearchSecond()));
              },
              child: ListTile(
                leading: Icon(FontAwesomeIcons.search),
                title: Text('General Search'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.briefcase),
                title: Text('New Jobs (24hrs)'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.hourglass),
                title: Text('Deadline Tomorrow'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.businessTime),
                title: Text('Part Time Job'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.fileContract),
                title: Text('Contractual Jobs'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.globe),
                title: Text('Government Jobs'),
              ),
            ),
            Container(
              width: 360.0,
              child: Divider(
                thickness: 2.0,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.userClock),
                title: Text('Job Application Deadline'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.mailBulk),
                title: Text('Emailed Resume'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.eye),
                title: Text('Employer Viewed Resume'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.handshake),
                title: Text('Interview Invitation'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.chalkboardTeacher),
                title: Text('Upcoming Training'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.cogs),
                title: Text('Settings'),
              ),
            ),
            Container(
              width: 360.0,
              child: Divider(
                thickness: 2.0,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.infoCircle),
                title: Text('App Guides'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.star),
                title: Text('Rate Us on Google Play Store'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.inbox),
                title: Text('Feedback and Support'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.lock),
                title: Text('Privacy Policy'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(FontAwesomeIcons.solidStickyNote),
                title: Text('Terms and Policies'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
