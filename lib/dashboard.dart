import 'package:flutter/material.dart';
import 'package:school/custom.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  custom_widget('images/hm.png', 'Dashboard'),
                  custom_widget('images/dss.png', 'Dashboard'),
                  custom_widget('images/dss.png', 'Dashboard'),
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                custom_widget('images/hm.png', 'Dashboard'),
                custom_widget('images/dss.png', 'Dashboard'),
                custom_widget('images/dss.png', 'Dashboard'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                custom_widget('images/hm.png', 'Dashboard'),
                custom_widget('images/dss.png', 'Dashboard'),
                custom_widget('images/dss.png', 'Dashboard'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 68),
              child: Row(
                children: [
                  custom_widget('images/hm.png', 'Dashboard'),
                  SizedBox(width: 10,),
                  custom_widget('images/dss.png', 'Dashboard'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
