import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/home_search.dart';
import 'package:jobportal_flutter_mrn/screens/intro_pages/job_search_all.dart';
import 'package:jobportal_flutter_mrn/widgets/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context) => JobSearchAll()),
//    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
    ));
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
          height: SizeConfig.blockSizeVertical * 100,
          width: SizeConfig.blockSizeHorizontal * 100,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('assets/images/code.png'),
                        height: SizeConfig.blockSizeVertical * 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:120.0, right: 120.0),
                          child: LinearProgressIndicator(
                            backgroundColor: Color(0xFFD7D7D7),
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Column(
                children: <Widget>[
                  Text(
                    'CodeSolutions101',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                    ),
                  ),
                  Text(
                    'www.codesolutions101.com',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 23.5,fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'v1.0.0.16(85)',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
