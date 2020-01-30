import 'package:flutter/material.dart';
import 'package:jobportal_flutter_mrn/screens/registration/create_account_page.dart';
import 'package:jobportal_flutter_mrn/utils/constants.dart';
import 'package:jobportal_flutter_mrn/widgets/bottomInfoBar.dart';
import 'package:jobportal_flutter_mrn/widgets/size_config.dart';

class SkillPage extends StatefulWidget {
  @override
  _SkillPageState createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {

  List<String> items = <String>[
    'Accounting/Finance',
    'Bank/ Non-Bank Fin. Institution',
    'Commercial/Supply Chain',
    'Education/Training',
    'Engineer/Architects',
    'Garments/Textile',
    'HR/Org. Development',
    'Gen Mgt/Admin',
    'Design/Creative',
    'Production/Operation',
    'Hospitality/ Travel/ Tourism',
    'Beauty Care/ Health & Fitness',
    'Electrician/ Construction/ Repair',
    'IT & Telecommunication',
    'Marketing/Sales',
    'Customer Support/Call Centre',
    'Media/Ad./Event Mgt.',
    'Medical/Pharma',
    'Agro (Plant/Animal/Fisheries)',
    'NGO/Development',
    'Research/Consultancy',
    'Secretary/Receptionist',
    'Data Entry/Operator/BPO',
    'Driving/Motor Technician',
    'Security/Support Service',
    'Law/Legal',
    'Others'
  ];
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
                      value: 0.4,
                    ),
                  ),
                  PageTitle(titleText: "Select Skill from the list", fontSize: 25.0,),
                  Container(
                    height: 450.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex:3,
                          child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.only(top:0.0 ,bottom:5.0 ,left: 15.0,right: 15.0),
                                child: Container(
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Theme.of(context).accentColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:5.0),
                                    child: ListTile(
                                      title: Text('${items[index]}',style: TextStyle(fontSize: 18.0),),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
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
          context, MaterialPageRoute(builder: (context) => CreateAccountPage())),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
