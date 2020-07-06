import 'package:flutter/material.dart';
import 'package:personal_web/commons/commons.dart';
import 'package:personal_web/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _textEditingControllerEmail =
      TextEditingController();
  final TextEditingController _textEditingControllerMessage =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ContentSize.height(context),
        width: ContentSize.width(context),
        color: ColorPalette.background,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    ContentSize.width(context) * 0.1,
                    ContentSize.height(context) * 0.1,
                    ContentSize.width(context) * 0.1,
                    0,
                  ),
                  child: Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textDirection: TextDirection.ltr,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Hello',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        .copyWith(
                                          fontSize: ContentSize.dp6(context),
                                        ),
                                  ),
                                  TextSpan(
                                    text: ', i am',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        .copyWith(
                                          color: ColorPalette.darkGrey,
                                          fontSize: ContentSize.dp6(context),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Khairunnaufal Hanif',
                              textDirection: TextDirection.ltr,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                    fontSize: ContentSize.dp10(context),
                                  ),
                            ),
                            SizedBox(
                              height: ContentSize.height(context) * 0.02,
                            ),
                            Text(
                              'UI UX enthusiast, frontend developer (flutter), and lifelong learner,......',
                              textDirection: TextDirection.ltr,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  .copyWith(
                                    fontSize: ContentSize.dp4(context),
                                  ),
                            ),
                            SizedBox(
                              height: ContentSize.height(context) * 0.04,
                            ),
                            downloadWidget(
                              context,
                              'CV',
                              () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          width: ContentSize.width(context) * 0.1,
                        ),
                        Image.asset(
                          'assets/images/person_in_frame.png',
                          height: ContentSize.height(context) * 0.7,
                          width: ContentSize.width(context) * 0.3,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    ContentSize.width(context) * 0.1,
                    0,
                    ContentSize.width(context) * 0.1,
                    0,
                  ),
                  child: Flexible(
                    flex: 1,
                    child: Container(
                      height: ContentSize.height(context),
                      width: ContentSize.width(context),
                      padding: EdgeInsets.fromLTRB(
                        ContentSize.width(context) * 0.01,
                        ContentSize.height(context) * 0.1,
                        ContentSize.width(context) * 0.01,
                        ContentSize.height(context) * 0.1,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'What i do',
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.headline2.copyWith(
                                      fontSize: ContentSize.dp6(context),
                                    ),
                          ),
                          Text(
                            'Interesting in',
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.headline1.copyWith(
                                      fontSize: ContentSize.dp8(context),
                                    ),
                          ),
                          SizedBox(
                            height: ContentSize.height(context) * 0.1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  interestWidget(
                                    context,
                                    'assets/icons/ui_ux_icon.png',
                                    'UI UX',
                                    'Mobile app, web app, material design, flat design, \nwireframing, prototyping',
                                  ),
                                  SizedBox(
                                    height: ContentSize.height(context) * 0.15,
                                  ),
                                  interestWidget(
                                    context,
                                    'assets/icons/freelance_icon.png',
                                    'Freelance',
                                    'Mobile app, web app, design, \nteaching, mentoring, sharing',
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: ContentSize.width(context) * 0.1,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  interestWidget(
                                    context,
                                    'assets/icons/language_icon.png',
                                    'Language',
                                    'Java, kotlin, dart, json, \ncontributing, open sourcing',
                                  ),
                                  SizedBox(
                                    height: ContentSize.height(context) * 0.15,
                                  ),
                                  interestWidget(
                                    context,
                                    'assets/icons/ci_cd_icon.png',
                                    'CI CD',
                                    'Firebase, fastlane, codemagic, \nintegrating, delivering',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    ContentSize.width(context) * 0.1,
                    ContentSize.height(context) * 0.1,
                    ContentSize.width(context) * 0.1,
                    ContentSize.height(context) * 0.1,
                  ),
                  child: Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Expertise',
                          textDirection: TextDirection.ltr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headline2.copyWith(
                                fontSize: ContentSize.dp6(context),
                              ),
                        ),
                        Text(
                          'Skill sets',
                          textDirection: TextDirection.ltr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headline1.copyWith(
                                fontSize: ContentSize.dp8(context),
                              ),
                        ),
                        SizedBox(
                          height: ContentSize.height(context) * 0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            skillSetWidget(
                              context,
                              'assets/icons/75_percent.png',
                              '75 %',
                              'Development',
                            ),
                            skillSetWidget(
                              context,
                              'assets/icons/82_percent.png',
                              '82 %',
                              'Problem solve',
                            ),
                            skillSetWidget(
                              context,
                              'assets/icons/70_percent.png',
                              '70 %',
                              'Communication',
                            ),
                            skillSetWidget(
                              context,
                              'assets/icons/90_percent.png',
                              '90 %',
                              'Self learn',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    ContentSize.width(context) * 0.1,
                    0,
                    ContentSize.width(context) * 0.1,
                    0,
                  ),
                  child: Flexible(
                    flex: 1,
                    child: Container(
                      height: ContentSize.height(context),
                      width: ContentSize.width(context),
                      padding: EdgeInsets.fromLTRB(
                        ContentSize.width(context) * 0.01,
                        ContentSize.height(context) * 0.1,
                        ContentSize.width(context) * 0.01,
                        ContentSize.height(context) * 0.1,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Portfolio',
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.headline2.copyWith(
                                      fontSize: ContentSize.dp6(context),
                                    ),
                          ),
                          Text(
                            'Latest project',
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.headline1.copyWith(
                                      fontSize: ContentSize.dp8(context),
                                    ),
                          ),
                          SizedBox(
                            height: ContentSize.height(context) * 0.1,
                          ),
                          Image.asset(
                            'assets/images/latest_project.png',
                            height: ContentSize.height(context) * 0.4,
                            width: ContentSize.width(context) * 0.9,
                          ),
                          SizedBox(
                            height: ContentSize.height(context) * 0.05,
                          ),
                          downloadWidget(
                            context,
                            'now',
                            () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    ContentSize.width(context) * 0.1,
                    ContentSize.height(context) * 0.1,
                    ContentSize.width(context) * 0.1,
                    ContentSize.height(context) * 0.1,
                  ),
                  child: Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Contact',
                          textDirection: TextDirection.ltr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headline2.copyWith(
                                fontSize: ContentSize.dp6(context),
                              ),
                        ),
                        Text(
                          'Say hi to me',
                          textDirection: TextDirection.ltr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headline1.copyWith(
                                fontSize: ContentSize.dp8(context),
                              ),
                        ),
                        SizedBox(
                          height: ContentSize.height(context) * 0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                contactWidget(
                                  context,
                                  'assets/icons/gmail_icon.png',
                                  'hnaufal123@gmail.com',
                                  () {},
                                ),
                                SizedBox(
                                  height: ContentSize.height(context) * 0.03,
                                ),
                                contactWidget(
                                  context,
                                  'assets/icons/linkedin_icon.png',
                                  'Khairunnaufal hanif',
                                  () {},
                                ),
                                SizedBox(
                                  height: ContentSize.height(context) * 0.03,
                                ),
                                contactWidget(
                                  context,
                                  'assets/icons/github_icon.png',
                                  'Hanif Naufal',
                                  () {},
                                ),
                                SizedBox(
                                  height: ContentSize.height(context) * 0.03,
                                ),
                                contactWidget(
                                  context,
                                  'assets/icons/dribbble_icon.png',
                                  'Hanif Naufal',
                                  () {},
                                ),
                              ],
                            ),
                            SizedBox(
                              width: ContentSize.width(context) * 0.1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputWidget(
                                  context,
                                  'Enter your email',
                                  _textEditingControllerEmail,
                                  TextInputType.emailAddress,
                                  ContentSize.height(context) * 0.06,
                                ),
                                SizedBox(
                                  height: ContentSize.height(context) * 0.03,
                                ),
                                inputWidget(
                                  context,
                                  'Enter your message',
                                  _textEditingControllerMessage,
                                  TextInputType.text,
                                  ContentSize.height(context) * 0.15,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: ContentSize.height(context) * 0.06,
                                    width: ContentSize.width(context) * 0.1,
                                    padding: EdgeInsets.fromLTRB(
                                      ContentSize.width(context) * 0.01,
                                      ContentSize.height(context) * 0.01,
                                      ContentSize.width(context) * 0.01,
                                      ContentSize.height(context) * 0.01,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: ColorPalette.pink,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Send',
                                          textDirection: TextDirection.ltr,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3
                                              .copyWith(
                                                color: Colors.white,
                                                fontSize:
                                                    ContentSize.dp4(context),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
