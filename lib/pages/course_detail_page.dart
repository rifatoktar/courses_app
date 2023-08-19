import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/course_detail_tabbar.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    String companyName = 'Google';
    var courseRate = 4.9;
    String courseName = 'Google Cloud - Professional Data Engineer';
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              "assets/icons/arrow-left.svg",
              height: 24,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).cardColor, BlendMode.srcIn),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  )),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 180,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff5AE4A7), width: 2),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/google-image.PNG"))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff3AE374)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        companyName,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Color(0xff3AE374),
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$courseRate",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(
                          width: 350,
                          child: Text(
                            courseName,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CourseDetailTabBar()
              ]),
        )));
  }
}
