import 'package:flutter/material.dart';
import 'package:jobportal_flutter_mrn/widgets/header.dart';

class Shortlisted extends StatefulWidget {
  @override
  _ShortlistedState createState() => _ShortlistedState();
}

class _ShortlistedState extends State<Shortlisted> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,titleText: 'Shortlisted'),
    );
  }

}
