
import 'package:flutter/material.dart';
import 'package:school/dashboard.dart';
import 'package:school/register.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:school/resetpass.dart';

class MyLogin extends StatefulWidget {

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController userController= TextEditingController();
  TextEditingController passController= TextEditingController();
  String user= 'sohan';
  String pass ='123456';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/login.png'), fit: BoxFit.cover
    ),
    ),
    child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
        children: [
        Container(
        padding: EdgeInsets.only(left: 35, top: 130),
        child: Text('Welcome\nBack', style: TextStyle(color: Colors.white, fontSize: 33),
        ),
        ),
    SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.only(
        top: height * 0.5),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
        margin: EdgeInsets.only(left: 35, right: 35),
        child: Column(
        children: [
            TextField(
            controller:userController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            labelText: "Email or student id",
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            ),
            ),
            ),
              SizedBox(height: 30,
           ),
            TextField(
             controller: passController,
             style: TextStyle(),
             obscureText: true,
             decoration: InputDecoration(
             fillColor: Colors.grey.shade100,
             filled: true,
             labelText: "Password",
             border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
             ),
             ),
             ),
               SizedBox(height: 40,
              ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text('Sign in',style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
            ),
        CircleAvatar(
             radius: 30,
             backgroundColor: Color(0xff4c505b),
             child: IconButton(
             color: Colors.white,
             onPressed: () {
               if(userController.text.isEmpty || passController.text.isEmpty)
                { Fluttertoast.showToast(msg: 'please enter Id and password',toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.SNACKBAR);}
               else if(userController.text== user && passController.text==pass)
                 {Fluttertoast.showToast(msg: 'Login Successful',toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.SNACKBAR);
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                 }
               else{ Fluttertoast.showToast(msg: 'Please enter valid id and password',toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.SNACKBAR);}

               },
        icon: Icon(Icons.arrow_forward,
          ),
          ),
          ),
          ],
          ),
    SizedBox(height: 40,
        ),
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    TextButton(
        onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegister()));
        },
    child: Text('Sign Up',textAlign: TextAlign.left,style: TextStyle(decoration: TextDecoration.underline,
        color: Color(0xff4c505b),fontSize: 18),
        ),
        style: ButtonStyle(),
        ),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Resetpass()));
        },
        child: Text('Forgot Password',style: TextStyle( decoration: TextDecoration.underline,
         color: Color(0xff4c505b),fontSize: 18,
        ),
        ),
        ),
                            ],
                          ),
                        ],
                      ),
                    )
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