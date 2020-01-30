import 'package:flutter/material.dart';
import 'package:jobportal_flutter_mrn/screens/intro_pages/sign_in_page.dart';
import 'package:jobportal_flutter_mrn/utils/constants.dart';
import 'package:jobportal_flutter_mrn/widgets/bottomInfoBar.dart';

class JobSearchAll extends StatefulWidget {
  @override
  _JobSearchAllState createState() => _JobSearchAllState();
}

class _JobSearchAllState extends State<JobSearchAll> {
  int _jobType;
  int _jobLocation;
  int _jobTitle;

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
    'Govt./ Semi-Govt.',
    'Telecommunication'
  ];

  List<String> jobTitle = <String>[
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
            Container(
              alignment: Alignment.center,
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: new Icon(Icons.account_circle),
                              iconSize: 50.0,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Search Job',
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 350.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(color: Theme.of(context).accentColor)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  hint: new Text('Job Type'),
                                  value: _jobType == null ? null : jobType[_jobType],
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
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          width: 350.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(color: Theme.of(context).accentColor)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  hint: new Text('Location'),
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
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          width: 350.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(color: Theme.of(context).accentColor)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  hint: new Text('Job Title'),
                                  value: _jobTitle == null ? null : jobTitle[_jobTitle],
                                  items: jobTitle.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _jobTitle = jobTitle.indexOf(value);
                                    });
                                  },
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print('search');
                          },
                          child: Container(
                            width: 355.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border:
                                Border.all(color: Theme.of(context).accentColor)),
                            child: Container(
                              color: Theme.of(context).accentColor,
                              child: GestureDetector(
                                child: ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                  title: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 50.0, bottom: 10.0),
                                      child: Text(
                                        'Search',
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
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('hotjobs');
                          },
                          child: Container(
                            width: 355.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border:
                                Border.all(color: Theme.of(context).accentColor)),
                            child: Container(
                              child: GestureDetector(
                                child: ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Icon(
                                      Icons.whatshot,
                                      color: Color(0xFFDE1E37),
                                      size: 30.0,
                                    ),
                                  ),
                                  title: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 50.0, bottom: 10.0),
                                      child: Text(
                                        'View New Jobs',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
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
          context, MaterialPageRoute(builder: (context) => SignInPage())),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
