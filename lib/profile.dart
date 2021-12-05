
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
String userfname='';
String userlname='';


String pass='';

  @override
  void initState() {
    getSharedPref();
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Column(
        children: [
          Text('user name: $userfname  $userlname'),
          Text('pass: $pass')
        ],
      )
      ),
    );
  }
  getSharedPref() async{
    final pref = await SharedPreferences.getInstance();
    setState(() {
      userfname = pref.getString('userfname')!;
      userlname= pref.getString('userlname')!;
     pass= pref.getString('pass')!;
    });
  }
}
