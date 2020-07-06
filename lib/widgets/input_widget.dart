import 'package:flutter/material.dart';
import 'package:personal_web/commons/commons.dart';

Container inputWidget(
  BuildContext context,
  String hint,
  TextEditingController textEditingController,
  TextInputType textInputType,
  double height,
) {
  return Container(
    height: height,
    width: ContentSize.width(context) * 0.3,
    child: TextField(
      controller: textEditingController,
      cursorColor: Colors.grey,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(
          ContentSize.width(context) * 0.02,
          ContentSize.height(context) * 0.01,
          ContentSize.width(context) * 0.02,
          ContentSize.height(context) * 0.01,
        ),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.headline3.copyWith(
              fontSize: ContentSize.dp4(context),
            ),
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
