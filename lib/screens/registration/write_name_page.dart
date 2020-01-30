import 'package:flutter/material.dart';
import 'package:jobportal_flutter_mrn/screens/registration/select_gender_page.dart';
import 'package:jobportal_flutter_mrn/utils/constants.dart';
import 'package:jobportal_flutter_mrn/widgets/bottomInfoBar.dart';
class NamePage extends StatefulWidget {
  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {

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
                      value: 0.6,
                    ),
                  ),
                  PageTitle(titleText: "Write Name", fontSize: 25.0,),
                  CommonInputForm(labelText: "Name",),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: floatingActionButtonNext(
          context, MaterialPageRoute(builder: (context) => SelectGender())),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
