import 'package:flutter/material.dart';
import 'package:personal_web/commons/commons.dart';

Row interestWidget(
  BuildContext context,
  String icon,
  String title,
  String description,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        icon,
        height: ContentSize.height(context) * 0.1,
        width: ContentSize.width(context) * 0.1,
      ),
      SizedBox(
        width: ContentSize.width(context) * 0.003,
      ),
      Padding(
        padding: EdgeInsets.only(top: ContentSize.height(context) * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textDirection: TextDirection.ltr,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: ContentSize.dp6(context),
                  ),
            ),
            SizedBox(
              height: ContentSize.height(context) * 0.02,
            ),
            Text(
              description,
              textDirection: TextDirection.ltr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline3.copyWith(
                    fontSize: ContentSize.dp4(context),
                  ),
            ),
          ],
        ),
      ),
    ],
  );
}
