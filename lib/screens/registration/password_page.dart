import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal_flutter_mrn/screens/registration/success_page.dart';
import 'package:jobportal_flutter_mrn/utils/constants.dart';
import 'package:jobportal_flutter_mrn/widgets/bottomInfoBar.dart';
class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {

  bool passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    passwordVisible = false;
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                      child: LinearProgressIndicator(
                        backgroundColor: Color(0xFFD7D7D7),
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        value: 0.9,
                      ),
                    ),
                    PageTitle(
                      titleText:
                      "Set as User ID, Email address/Mobile",
                      fontSize: 20.0,
                    ),
                    Container(
                      width: 360.0,
                      height: 70.0,
                      child: Column(
                        children: <Widget>[
                          Card(
                            color: Color(0xFF2E64A4),
                            child: ListTile(
                              leading: Icon(FontAwesomeIcons.envelope,color: Colors.white,size: 30.0,),
                              title: Text(
                                'info@codesolutions101.com',
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
                      width: 350.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Theme.of(context).accentColor)),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(FontAwesomeIcons.mobileAlt,color: Theme.of(context).accentColor,size: 30.0,),
                            title: Text(
                              'Mobile Number',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PageTitle(
                      titleText:
                      "Type Password",
                      fontSize: 25.0,
                    ),
                    PageTitle(
                      titleText:
                      "Use atleast 8 to 12 characters",
                      fontSize: 15.0,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 10.0,),
                        Container(
                          width: 360.0,
                          height: 70.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  obscureText: !passwordVisible,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                          passwordVisible ? Icons.visibility : Icons.visibility_off),
                                      onPressed: (){
                                        setState(() {
                                          passwordVisible = !passwordVisible;
                                        });
                                      },
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 360.0,
                          height: 70.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  obscureText: !passwordVisible,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                          passwordVisible ? Icons.visibility : Icons.visibility_off),
                                      onPressed: (){
                                        setState(() {
                                          passwordVisible = !passwordVisible;
                                        });
                                      },
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    labelText: 'Confirm Password',
                                    labelStyle: TextStyle(fontSize: 15.0),
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
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: floatingActionButtonNext(
          context, MaterialPageRoute(builder: (context) => SuccessPage())),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
