import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JobSearchSecond extends StatefulWidget {
  @override
  _JobSearchSecondState createState() => _JobSearchSecondState();
}

class _JobSearchSecondState extends State<JobSearchSecond> {
  int _jobType;
  int _jobLocation;

  int _jobKeyWord;
  int _jobSpecial;

  List<String> jobKeyWord = <String>[
    "accountant",
    "actor",
    "artist",
    "assembler",
    "astronomer",
    "athlete",
    "athletic trainer",
    "ATM machine repairer",
    "atmospheric scientist",
    "attendant",
  ];

  List<String> jobSpecial = <String>[
    "accountant",
    "actor",
    "artist",
    "assembler",
    "astronomer",
    "athlete",
    "athletic trainer",
    "ATM machine repairer",
    "atmospheric scientist",
    "attendant",
  ];

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: <Widget>[
          SizedBox(
            height: 10.0,
            child: FlatButton(
              child: Text('Search'),
              color: Colors.red,
              onPressed: (){},
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: 350.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        border:
                            Border.all(color: Color(0xFF000000), width: 1.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
//                                iconEnabledColor: Colors.white,
//                                iconDisabledColor: Colors.white,
                              hint: new Text(
                                  'Keyword                                                             '),
                              value: _jobKeyWord == null
                                  ? null
                                  : jobKeyWord[_jobKeyWord],
                              items: jobKeyWord.map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _jobKeyWord = jobKeyWord.indexOf(value);
                                });
                              },
                            ),
                          ),
                        ],
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
                        border:
                            Border.all(color: Color(0xFF000000), width: 1.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
//                                iconEnabledColor: Colors.white,
//                                iconDisabledColor: Colors.white,
                              hint: new Text(
                                  'General Category                                              '),
                              value: _jobType == null
                                  ? null
                                  : jobType[_jobType],
                              items: jobType.map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _jobType = jobType.indexOf(value);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 350.0,
              child: Row(children: <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                ),
                Text("    OR    "),
                Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 350.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        border:
                            Border.all(color: Color(0xFF000000), width: 1.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
//                                iconEnabledColor: Colors.white,
//                                iconDisabledColor: Colors.white,
                              hint: new Text(
                                  'Special Skilled Category                                 '),
                              value: _jobSpecial == null
                                  ? null
                                  : jobSpecial[_jobSpecial],
                              items: jobSpecial.map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _jobSpecial = jobSpecial.indexOf(value);
                                });
                              },
                            ),
                          ),
                        ],
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
                        border:
                            Border.all(color: Color(0xFF000000), width: 1.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
//                                iconEnabledColor: Colors.white,
//                                iconDisabledColor: Colors.white,
                              hint: new Text(
                                  'Location                                                             '),
                              value: _jobLocation == null
                                  ? null
                                  : jobLocation[_jobLocation],
                              items: jobLocation.map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _jobLocation = jobLocation.indexOf(value);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 350.0,
              child: Row(children: <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                ),
                Text("    Experience    "),
                Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {

                                },
                                textColor: Colors.black,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    border:
                                    Border.all(color: Color(0xFF000000), width: 1.0),
                                  ),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                          'Less than 1 year',
                                          style: TextStyle(fontSize: 20)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {

                                },
                                textColor: Colors.black,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    border:
                                    Border.all(color: Color(0xFF000000), width: 1.0),
                                  ),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                          '1 Year',
                                          style: TextStyle(fontSize: 20)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {

                                },
                                textColor: Colors.black,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    border:
                                    Border.all(color: Color(0xFF000000), width: 1.0),
                                  ),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                          '3 - 5 Years',
                                          style: TextStyle(fontSize: 20)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {

                                },
                                textColor: Colors.black,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    border:
                                    Border.all(color: Color(0xFF000000), width: 1.0),
                                  ),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                          '5 - 10 Years',
                                          style: TextStyle(fontSize: 20)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {

                                },
                                textColor: Colors.black,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    border:
                                    Border.all(color: Color(0xFF000000), width: 1.0),
                                  ),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                          'Over 10 years',
                                          style: TextStyle(fontSize: 20)
                                      ),
                                    ],
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
    );
  }
}
