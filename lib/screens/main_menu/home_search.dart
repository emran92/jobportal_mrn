import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal_flutter_mrn/widgets/size_config.dart';

class HomeSearch extends StatefulWidget {
  @override
  _HomeSearchState createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  int _jobType;
  int _jobLocation;

  List<String> jobLocation = <String>[
    'Dhaka',
    'Chittagong',
    'Khulna',
    'Sylhet',
    'Barisal',
    'Mymensingh',
    'Rangpur',
    'Rajshahi'
  ];

  List<String> jobType = <String>[
    'Any',
    'Bank',
    'Hospital',
    'Education',
    'Electronics',
    'Entertainment',
    'Hotel/Restaurant',
    'Govt./ Semi-Govt.',
    'Telecommunication'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: SizeConfig.safeBlockVertical * 100,
          width: SizeConfig.safeBlockHorizontal * 100,
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/blue_bg.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 200.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80.0,
                              width: 80.0,
                              child: CircleAvatar(
                                radius: 70.0,
                                backgroundImage: AssetImage(
                                    'assets/images/profile_icon.jpg'),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Pencilbox Education',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                              Text(
                                'pencilbox@edu.bd',
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 350.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(
                                  color: Color(0xFF2E64A4), width: 8.0)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:10.0),
                                    child: Icon(FontAwesomeIcons.tag,size: 22.0,),
                                  ),
                                  Text(' Job Location',style: TextStyle(fontSize: 20.0),),
                                ],
                              ),
                              value: _jobLocation == null
                                  ? null
                                  : jobLocation[_jobLocation],
                              items: jobLocation.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left:10.0),
                                        child: Icon(FontAwesomeIcons.tag,size: 22.0,),
                                      ),
                                      Text(value,style: TextStyle(fontSize: 20.0),),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _jobLocation = jobLocation.indexOf(value);
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 350.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(
                                  color: Color(0xFF2E64A4), width: 8.0)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:10.0),
                                    child: Icon(FontAwesomeIcons.briefcase,size: 22.0,),
                                  ),
                                  Text(' Organization Type',style: TextStyle(fontSize: 20.0),),
                                ],
                              ),
                              value: _jobType == null
                                  ? null
                                  : jobType[_jobType],
                              items: jobType.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left:10.0),
                                        child: Icon(FontAwesomeIcons.briefcase,size: 22.0,),
                                      ),
                                      Text(value,style: TextStyle(fontSize: 20.0),),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _jobType = jobType.indexOf(value);
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 200.0,
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            textColor: Colors.white,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFFed213a),
                                    Color(0xFF93291e),
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(FontAwesomeIcons.search),
                                  Text('  Search Job',
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 200.0,
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            textColor: Colors.white,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFFed213a),
                                    Color(0xFF93291e),
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(FontAwesomeIcons.share),
                                  Text('  Post Job',
                                      style: TextStyle(fontSize: 20)),
                                ],
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0X12fcfcfc),
        elevation: 0,
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Exit',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Are you sure you want to close the App',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                height: 50.0,
                                child: FlatButton(
                                  child: Text('Yes'),
                                  color: Colors.blue,
                                  onPressed: () {
                                    SystemChannels.platform
                                        .invokeMethod('SystemNavigator.pop');
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 50.0,
                                child: FlatButton(
                                  child: Text('No'),
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        child: Icon(
          Icons.exit_to_app,
          color: Theme.of(context).accentColor,
          size: 30.0,
        ),
      ),
    );
  }
}
