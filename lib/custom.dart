
import 'package:flutter/material.dart';

class custom_widget extends StatelessWidget {

  late String image;
  late String text;
  custom_widget(String image, text){
    this.image=image;
    this.text=text;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            height: height/8.5,
            width: width/4,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(image,fit: BoxFit.cover,),
              ),
            ),
            
          ),
          Text(text,style: TextStyle(fontSize: 18),)
        ],
      ),
    );
  }
}

