import 'package:flutter/material.dart';
import 'package:jobportal_flutter_mrn/widgets/header.dart';

class HotJobs extends StatefulWidget {
  @override
  _HotJobsState createState() => _HotJobsState();
}

class _HotJobsState extends State<HotJobs> {
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
    return Scaffold(
      appBar: header(context, titleText: 'Hot Jobs'),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 10,
                    blurRadius: 20,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                    color: Colors.white,
                    elevation: 5.0,
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Text(
                            '175',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' Hot Jobs',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150.0,
                    child: Card(
                      elevation: 5.0,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      child: ListTile(
                        title: Text(
                          '${items[index]}',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          '${items[index]}',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        trailing: Image(
                          width: 50.0,
                          height: 50.0,
                          image: AssetImage('assets/images/code.png'),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
