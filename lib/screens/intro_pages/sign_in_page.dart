import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal_flutter_mrn/screens/registration/relevant_type.dart';
import 'package:jobportal_flutter_mrn/utils/constants.dart';
import 'package:jobportal_flutter_mrn/widgets/bottomInfoBar.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            Container(
              alignment: Alignment.center,
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    PageTitle(titleText: "Sign In", fontSize: 50.0,),
                    CommonInputForm(labelText: "Username, Email or Mobile No",),
                    GestureDetector(
                      onTap: () {
                        print('Forgot');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:25.0,bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Forgot Username?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Sign in with Social',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {
                                print("Google");
                              },
                              child: new Icon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 2.0,
                              fillColor: Color(0xFFDE1E37),
                              padding: const EdgeInsets.all(15.0),
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                print("Facebook");
                              },
                              child: new Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 2.0,
                              fillColor: Color(0xFF3B5999),
                              padding: const EdgeInsets.all(15.0),
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                print("linkedin");
                              },
                              child: new Icon(
                                FontAwesomeIcons.linkedinIn,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 2.0,
                              fillColor: Color(0xFF0177B5),
                              padding: const EdgeInsets.all(15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Dont have an account?',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Create Account");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registration()));
                          },
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: floatingActionButtonNext(context, MaterialPageRoute(builder: (context) => Registration())),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}






