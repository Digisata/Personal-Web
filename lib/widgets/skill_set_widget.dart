import 'package:flutter/material.dart';
import 'package:personal_web/commons/commons.dart';

Column skillSetWidget(
  BuildContext context,
  String icon,
  String percentage,
  String title,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            icon,
            height: ContentSize.height(context) * 0.2,
            width: ContentSize.width(context) * 0.2,
          ),
          Text(
            percentage,
            textDirection: TextDirection.ltr,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: ContentSize.dp8(context),
                ),
          ),
        ],
      ),
      SizedBox(
        height: ContentSize.height(context) * 0.02,
      ),
      Text(
        title,
        textDirection: TextDirection.ltr,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.headline1.copyWith(
              fontSize: ContentSize.dp6(context),
            ),
      ),
    ],
  );
}
