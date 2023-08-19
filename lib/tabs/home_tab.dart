import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/course_button.dart';
import '../widgets/inprogress_card.dart';
import '../widgets/recommended_card.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Container(
              margin: EdgeInsets.only(left: 5),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80"))),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Stack(children: <Widget>[
              SvgPicture.asset(
                "assets/icons/bell.svg",
                height: 24,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).cardColor, BlendMode.srcIn),
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Icon(Icons.brightness_1,
                    size: 10.0, color: Color(0xff5AE4A7)),
              )
            ]),
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
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Row(children: [
                Image.asset(
                  "assets/images/hand-wave.png",
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Melisa Frell",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                )
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Many courses are waiting for you",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff5AE4A7)),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search courses, tutors...',
                  hintStyle: GoogleFonts.beVietnamPro(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  border: InputBorder.none,
                  prefixIcon: SvgPicture.asset(
                    "assets/icons/search.svg",
                    height: 20,
                    fit: BoxFit.scaleDown,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  suffixIcon: SvgPicture.asset(
                    "assets/icons/settings-2.svg",
                    height: 20,
                    fit: BoxFit.scaleDown,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Text(
                "In progress",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  InProgressCard(
                    iconLink: "assets/icons/magic-wand-fill.svg",
                    colorName: Color(0xff3AE374),
                    courseName: 'UI/UX Design',
                    courseSize: 'Course 7/10',
                    companyName: 'Google',
                    progressValue: 0.7,
                    completedPercent: 70,
                    progressColor: Color(0xff3AE374),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  InProgressCard(
                    iconLink: "assets/icons/code.svg",
                    colorName: Color(0xffFF3838),
                    courseName: 'Front-End Developer',
                    courseSize: 'Course 3/10',
                    companyName: 'Google',
                    progressValue: 0.3,
                    completedPercent: 30,
                    progressColor: Color(0xffFF3838),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Text(
                "Courses",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CourseButton(
                        colorName: Color(0xffFFB8B8),
                        iconLink: 'assets/icons/flame.svg',
                        courseCategory: 'All topics',
                      ),
                      CourseButton(
                        colorName: Color(0xff7158E2),
                        iconLink: 'assets/icons/bolt.svg',
                        courseCategory: 'Popular',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CourseButton(
                        colorName: Color(0xffC56CF0),
                        iconLink: 'assets/icons/star-shooting.svg',
                        courseCategory: 'Newest',
                      ),
                      CourseButton(
                        colorName: Color(0xff218C74),
                        iconLink: 'assets/icons/megaphone.svg',
                        courseCategory: 'Advance',
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Recommended",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/arrow-right.svg",
                        height: 24,
                        fit: BoxFit.scaleDown,
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).cardColor, BlendMode.srcIn),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 296,
                child: Column(
                  children: const [
                    RecommendedCard(
                      colorName: Color(0xff7158E2),
                      iconLink: 'assets/icons/bolt-fill.svg',
                      category: 'Popular',
                      courseName: 'Google Cloud - Professional Data Engineer',
                      companyName: 'Google',
                      courseRate: 4.9,
                      courseReview: 700,
                      courseTime: 50,
                      language: 'English',
                      userAge: 7,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    RecommendedCard(
                      colorName: Color(0xff218C74),
                      iconLink: 'assets/icons/megaphone-fill.svg',
                      category: 'Advance',
                      courseName: 'UI/UX Design',
                      companyName: 'LinkedIn',
                      courseRate: 4.8,
                      courseReview: 500,
                      courseTime: 10,
                      language: 'English',
                      userAge: 7,
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      )),
    );
  }
}
