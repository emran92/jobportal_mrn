import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobportal_flutter_mrn/screens/registration/password_page.dart';
import 'package:jobportal_flutter_mrn/utils/constants.dart';
import 'package:jobportal_flutter_mrn/widgets/bottomInfoBar.dart';

class MoreInfo extends StatefulWidget {
  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
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
            SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: LinearProgressIndicator(
                      backgroundColor: Color(0xFFD7D7D7),
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      value: 0.8,
                    ),
                  ),
                  PageTitle(
                    titleText:
                    "Provide your Mobile No and Email address (at least one)",
                    fontSize: 20.0,
                  ),
                  CommonInputForm(labelText: "Mobile Number",),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 15.0, bottom: 15.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
                              child: Divider(
                                thickness: 2.0,
                                color: Color(0xFFD7D7D7),
                              )),
                        ),
                        Text("OR"),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 10.0),
                              child: Divider(
                                thickness: 2.0,
                                color: Color(0xFFD7D7D7),
                              )),
                        ),
                      ],
                    ),
                  ),
                  CommonInputForm(labelText: "Email",),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: floatingActionButtonNext(
          context, MaterialPageRoute(builder: (context) => PasswordPage())),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
