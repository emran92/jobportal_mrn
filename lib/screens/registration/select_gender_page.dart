import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal_flutter_mrn/screens/registration/more_info.dart';
import 'package:jobportal_flutter_mrn/utils/constants.dart';
import 'package:jobportal_flutter_mrn/widgets/bottomInfoBar.dart';
class SelectGender extends StatefulWidget {
  @override
  _SelectGenderState createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: <Widget>[
            BackgroundWidget(size: size),
            BackButtonPop(),
            SizedBox(height: 5.0,),
            Container(
              alignment: Alignment.center,
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 70.0,),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: LinearProgressIndicator(
                      backgroundColor: Color(0xFFD7D7D7),
                      valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.green),
                      value: 0.7,
                    ),
                  ),
                  PageTitle(titleText: "Select Gender", fontSize: 25.0,),
                  Container(
                    width: 370.0,
                    height: 70.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Color(0xFF2E64A4),
                          child: ListTile(
                            leading: Icon(FontAwesomeIcons.male,color: Colors.white,size: 30.0,),
                            title: Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 370.0,
                    height: 70.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Icon(FontAwesomeIcons.female,color: Theme.of(context).accentColor,size: 30.0,),
                            title: Text(
                              'Female',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 370.0,
                    height: 70.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Icon(FontAwesomeIcons.transgender,color: Theme.of(context).accentColor,size: 30.0,),
                            title: Text(
                              'Other',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: floatingActionButtonNext(
          context, MaterialPageRoute(builder: (context) => MoreInfo())),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
