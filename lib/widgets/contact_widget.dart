import 'package:flutter/material.dart';
import 'package:personal_web/commons/commons.dart';

GestureDetector contactWidget(
  BuildContext context,
  String icon,
  String text,
  Function function,
) {
  return GestureDetector(
    onTap: function,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          height: ContentSize.height(context) * 0.05,
          width: ContentSize.width(context) * 0.05,
        ),
        SizedBox(
          width: ContentSize.width(context) * 0.003,
        ),
        Text(
          text,
          textDirection: TextDirection.ltr,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headline1.copyWith(
                fontSize: ContentSize.dp6(context),
              ),
        ),
      ],
    ),
  );
}
