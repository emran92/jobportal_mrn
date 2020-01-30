import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar header(context, {String titleText}) {
  Icon customIcon = Icon(FontAwesomeIcons.search);
  Widget customSearchBar = Text(
    titleText,
    style: TextStyle(
      fontSize: 25.0,
      color: Colors.white,
    ),
  );
  return AppBar(
    automaticallyImplyLeading: false,
    title: customSearchBar,
    actions: <Widget>[
      IconButton(
        onPressed: () {
          showSearch(context: context, delegate: DataSearch());
        },
        icon: customIcon,
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(FontAwesomeIcons.bell),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(FontAwesomeIcons.user),
      ),
    ],
    elevation: 3,
  );
}

class DataSearch extends SearchDelegate<String> {
  final jobs = [
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

  final recentJobs = [
    'Accounting/Finance',
    'Bank/ Non-Bank Fin. Institution',
    'Commercial/Supply Chain',
    'Education/Training',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      child: Text(query,style: TextStyle(fontSize: 25.0),),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    final suggestionList = query.isEmpty
        ? recentJobs
        : jobs;

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.local_atm),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
