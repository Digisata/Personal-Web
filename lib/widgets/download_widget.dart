import 'package:flutter/material.dart';
import 'package:personal_web/commons/commons.dart';

GestureDetector downloadWidget(
  BuildContext context,
  String text,
  Function function,
) {
  return GestureDetector(
    onTap: function,
    child: Container(
      height: ContentSize.height(context) * 0.06,
      width: ContentSize.width(context) * 0.19,
      padding: EdgeInsets.fromLTRB(
        ContentSize.width(context) * 0.02,
        ContentSize.height(context) * 0.01,
        ContentSize.width(context) * 0.02,
        ContentSize.height(context) * 0.01,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPalette.pink,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/download_icon.png',
            height: ContentSize.width(context) * 0.01,
            width: ContentSize.width(context) * 0.01,
          ),
          SizedBox(
            width: ContentSize.width(context) * 0.01,
          ),
          Text(
            'Download $text',
            textDirection: TextDirection.ltr,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline3.copyWith(
                  color: Colors.white,
                  fontSize: ContentSize.dp4(context),
                ),
          ),
        ],
      ),
    ),
  );
}
