import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/home_search.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/hot_jobs.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/more_settings.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/profile.dart';
import 'package:jobportal_flutter_mrn/screens/main_menu/shortlisted.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int pageIndex = 0;

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          HomeSearch(),
          HotJobs(),
          Shortlisted(),
          Profile(),
          MoreSettings(),
        ],
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 10,
              blurRadius: 20,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
        ),
        child: CupertinoTabBar(
          currentIndex: pageIndex,
          onTap: onTap,
          activeColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home',style: TextStyle(fontSize: 15.0),)),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot),title: Text('Hot Jobs',style: TextStyle(fontSize: 15.0),)),
            BottomNavigationBarItem(icon: Icon(Icons.star),title: Text('Shortlisted',style: TextStyle(fontSize: 15.0),)),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),title: Text('Profile',style: TextStyle(fontSize: 15.0),)),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.ellipsisH),title: Text('More',style: TextStyle(fontSize: 15.0),)),
          ],
        ),
      ),
    );
  }
}
