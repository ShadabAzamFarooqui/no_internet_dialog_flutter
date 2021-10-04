import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:no_internet_dialog/ad_dialog.dart';
import 'package:no_internet_dialog/test.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

String noInternetMessage = "No Internet connection!!";

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Get.to(Test());
                  // getDialog(context,DialogTypeEnm.dialog,Colors.blue,Colors.black,Colors.white);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  child: Text(
                    "Dialog",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
           /* const SizedBox(
              height: 10,
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  getDialog(context,DialogEnm.transparentDialog,Colors.blue);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  child: Text(
                    "Transparent Dialog",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),*/
            const SizedBox(
              height: 10,
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  getDialog(context,DialogTypeEnm.snackBar,Colors.blue,Colors.black,Colors.blue);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  child: Text(
                    "SnackBar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  getDialog(context,DialogTypeEnm.bottomSheet,Colors.blue,Colors.black,Colors.white);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  child: Text(
                    "Bottom Sheet",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  getDialog(context,DialogTypeEnm.toast,Colors.blue,Colors.black,Colors.white);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  child: Text(
                    "Toast",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ), Center(
              child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  getDialog(context,DialogTypeEnm.normalSnackBar,Colors.blue,Colors.black,Colors.white);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  child: Text(
                    "Normal SnackBar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}

