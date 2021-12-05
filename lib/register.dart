import 'dart:io';

import 'package:flutter/material.dart';
import 'package:school/login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  DateTime? _dateTime;
  getDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year),
      firstDate: DateTime(DateTime.now().year - 50),
      lastDate: DateTime(DateTime.now().year + 10),
    );
    setState(() {
      _dateTime = date!;
    });
  }

  TextEditingController firstnameController = TextEditingController();
  TextEditingController surenameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String? name = stdin.readLineSync();
  String? email = stdin.readLineSync();
  String? pass = stdin.readLineSync();
  int _radiovalue = 0;
  List<String> _country = ['Bangladesh', 'India'];
  String? SelectCountry;

  @override

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 30),
                child: Text(
                  'Create\nAccount',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: TextField(
                                  controller: firstnameController,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: "First Name",
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: TextField(
                                  controller: surenameController,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: "Surename",
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Email or Student id",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      activeColor: Colors.pink,
                                      value: 1,
                                      groupValue: _radiovalue,
                                      onChanged: (value) {
                                        setState(() {
                                          _radiovalue = value as int;
                                        });
                                      }),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      activeColor: Colors.pink,
                                      value: 2,
                                      groupValue: _radiovalue,
                                      onChanged: (value) {
                                        setState(() {
                                          _radiovalue = value as int;
                                        });
                                      }),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Radio(
                                      activeColor: Colors.pink,
                                      value: 3,
                                      groupValue: _radiovalue,
                                      onChanged: (value) {
                                        setState(() {
                                          _radiovalue = value as int;
                                        });
                                      }),
                                  Text(
                                    'Others',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 70,
                            width: 320,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: DropdownButton(
                                hint: Text(
                                  'please select country',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                value: SelectCountry,
                                onChanged: (newValue) {
                                  setState(() {
                                    SelectCountry = newValue.toString();
                                  });
                                },
                                items: _country.map((_country) {
                                  return DropdownMenuItem(
                                    child: new Text(_country),
                                    value: _country,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 250,
                                        child: _dateTime == null
                                            ? TextField(
                                                decoration: InputDecoration(
                                                    border: InputBorder.none),
                                              )
                                            : Text(
                                                '${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.day}'),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      getDate();
                                    },
                                    icon: Icon(Icons.date_range),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: passController,
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {

                                    setSharedPref();
                                    gender();
                                    if (firstnameController.text.isEmpty ||
                                        surenameController.text.isEmpty ||
                                        emailController.text.isEmpty ||
                                        passController.text.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg:
                                              'please enter your name, email and password',
                                          toastLength: Toast.LENGTH_LONG,
                                          gravity: ToastGravity.SNACKBAR);
                                    } else {
                                      Fluttertoast.showToast(
                                          msg: 'Signup Successful',
                                          toastLength: Toast.LENGTH_LONG,
                                          gravity: ToastGravity.SNACKBAR);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MyLogin()));
                                    }
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyLogin()));
                                },
                                child: Text(
                                  'Sign In',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  gender() {
    if (_radiovalue == 1) {
      Fluttertoast.showToast(
          msg: 'Male',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR);
    } else if (_radiovalue == 2) {
      Fluttertoast.showToast(
          msg: 'Female',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR);
    } else if (_radiovalue == 3) {
      Fluttertoast.showToast(
          msg: 'Others',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR);
    } else {
      Fluttertoast.showToast(
          msg: 'Please Select your gender',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR);
    }
  }
setSharedPref()async{
    final pref=await SharedPreferences.getInstance();
    pref.setString('userfname',firstnameController.text);
    pref.setString('userlname',surenameController.text);
    pref.setString('pass',passController.text);

}
}
