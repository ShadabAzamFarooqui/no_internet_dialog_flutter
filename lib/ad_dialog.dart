import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

enum DialogTypeEnm {
  dialog,
  transparentDialog,
  snackBar,
  bottomSheet,
  toast,
  normalSnackBar
}

String noInternetMessage = "No Internet connection!!";

///[DialogTypeEnm] has [dialog],[snackBar],[bottomSheet],[toast],[normalSnackBar]
///property to show different type.
///[backgroundColor] is the background/button color of the dialog.
///[textColor] is for the color of text.
///[buttonTextColor] is for the button text color.

getDialog(BuildContext context, DialogTypeEnm dialogEnm, final Color backgroundColor,final Color textColor,final Color buttonTextColor) {
  if (dialogEnm == DialogTypeEnm.dialog) {
    dialog(context, backgroundColor,textColor,buttonTextColor);
  } else if (dialogEnm == DialogTypeEnm.transparentDialog) {
    dialogTransparent(context, backgroundColor,textColor,buttonTextColor);
  } else if (dialogEnm == DialogTypeEnm.snackBar) {
    dialogSnackBar(context, backgroundColor,textColor,buttonTextColor);
  } else if (dialogEnm == DialogTypeEnm.bottomSheet) {
    dialogBottomSheet(context, backgroundColor,textColor,buttonTextColor);
  } else if (dialogEnm == DialogTypeEnm.toast) {
    dialogToast(context, backgroundColor,textColor,buttonTextColor);
  } else if (dialogEnm == DialogTypeEnm.normalSnackBar) {
    normalSnackBar(context, backgroundColor,textColor,buttonTextColor);
  }
}

void dialog(BuildContext context, final Color colors, final Color textColor,final Color buttonTextColor) {
  var width = MediaQuery.of(context).size.width;
  showGeneralDialog(
      context: context,
      barrierLabel: 'label1',
      barrierDismissible: true,
      // barrierColor:  buttonTextColor,
      pageBuilder: (context, a, aa) {
        return Align(
          alignment: Alignment.center,
          child: Material(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                height: 300,
                width: width * .8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                              IconData(0xe86f, fontFamily: 'MaterialIcons'),
                              size: 50.0)),
                    ),
                    Text(
                      "No Internet !",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Please check your internet connection and try again !!!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              color: textColor),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: MaterialButton(
                        color: colors,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child:  Padding(
                          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                          child: Text(
                            "Retry",
                            style: TextStyle(color: buttonTextColor, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        );
      });
}

void dialogTransparent(BuildContext context, final Color colors,final Color textColor,final Color buttonTextColor) {
  var width = MediaQuery.of(context).size.width;

  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
                height: 300,
                width: width * .8,
                alignment: FractionalOffset.center,
                padding: const EdgeInsets.all(0.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Material(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        height: 300,
                        width: width * .8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                      IconData(0xe86f,
                                          fontFamily: 'MaterialIcons'),
                                      size: 50.0)),
                            ),
                             Text(
                              "No Internet !",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: textColor),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Please check your internet connection and try again !!!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: textColor),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: MaterialButton(
                                color: colors,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                                  child: Text(
                                    "Retry",
                                    style: TextStyle(
                                        color: buttonTextColor, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                )),
          ));
}

void dialogSnackBar(BuildContext context, final Color colors,final Color textColor,final Color buttonTextColor) {
  Get.snackbar('Sorry', noInternetMessage,

      borderRadius: 0,
      backgroundColor: colors,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Container(),
      messageText: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(noInternetMessage,
                style:  TextStyle(color: textColor)),
          ),
          Expanded(
            flex: 1,
            child: Expanded(
                flex: 1,
                child: MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child:  Text(
                    "Retry",
                    style: TextStyle(color: buttonTextColor, fontSize: 18),
                  ),
                )),
          ),
        ],
      ),
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(0));
}

void dialogBottomSheet(BuildContext context, final Color colors,final Color textColor,final Color buttonTextColor) {
  showModalBottomSheet(
    context: context,
    // color is applied to main screen when modal bottom screen is displayed
    //background color for modal bottom screen
    // backgroundColor: Colors.yellow,
    //elevates modal bottom screen
    elevation: 10,
    // gives rounded corner to modal bottom screen
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    builder: (BuildContext context) {
      return Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(noInternetMessage),
            ),
          ),
          Expanded(
              flex: 1,
              child: MaterialButton(
                color: colors,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Text(
                    "Retry",
                    style: TextStyle(color: buttonTextColor, fontSize: 18),
                  ),
                ),
              )),
          SizedBox(
            width: 10,
          )
        ],
      );
    },
  );
}

Future<bool?> dialogToast(BuildContext context, final Color colors,final Color textColor,final Color buttonTextColor) {
  return Fluttertoast.showToast(
      msg: noInternetMessage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colors,
      textColor: buttonTextColor,
      fontSize: 16.0);
}

void normalSnackBar(BuildContext context, final Color colors,final Color textColor,final Color buttonTextColor) {
  Get.snackbar('Sorry', noInternetMessage,
      colorText: buttonTextColor,
      borderRadius: 0,
      backgroundColor: colors,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Container(),
      messageText: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(noInternetMessage,
                style:  TextStyle(color: buttonTextColor)),
          ),
        ],
      ),
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(10));
}
