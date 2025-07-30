import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static customButton({
    required VoidCallback callback,
    required String buttonname,
    final Icon? Icon,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: CupertinoButton(
          color: Color(0xffFF7622),
          onPressed: () {
            callback();
          },
          child: Text(
            buttonname,
            style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'sans', fontWeight: FontWeight.w600, letterSpacing: 0.3),
          )),
    );
  }

  static customText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
  }) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(fontSize: height, color: color ?? Color(0xff646982), fontWeight: fontweight, fontFamily: 'sans'),
    );
  }
}
