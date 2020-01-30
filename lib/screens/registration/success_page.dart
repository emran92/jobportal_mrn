import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/home_page.dart';
class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            icon: new Icon(Icons.arrow_back),
                            iconSize: 35.0,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 70.0,),
                      Image(
                        image: AssetImage('assets/images/medal_badge.png'),
                        height: 200.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Congratulations',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'Your Account has been created',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 30.0,),
                    Container(
                      width: 360.0,
                      height: 70.0,
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                            },
                            child: Card(
                              color: Color(0xFF2E64A4),
                              child: ListTile(
                                leading: Icon(FontAwesomeIcons.envelope,color: Colors.white,size: 30.0,),
                                title: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right:50.0),
                                    child: Text(
                                      'Find favorite Jobs',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
