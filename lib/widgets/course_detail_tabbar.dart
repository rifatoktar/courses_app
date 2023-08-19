import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseDetailTabBar extends StatefulWidget {
  const CourseDetailTabBar({super.key});

  @override
  State<CourseDetailTabBar> createState() => _CourseDetailTabBarState();
}

class _CourseDetailTabBarState extends State<CourseDetailTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var itemCount = 67;
    var videoCount = 50;
    var docsCount = 2;
    var noteCount = 15;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: Color(0xff3AE374),
              labelColor: Color(0xff374957),
              dividerColor: Colors.transparent,
              labelStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
              unselectedLabelStyle:
                  Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
              unselectedLabelColor: Theme.of(context).focusColor,
              tabs: const [
                Tab(text: 'About'),
                Tab(text: 'Review'),
                Tab(text: 'Discussion'),
                Tab(text: 'Notes'),
              ]),
        ),
        Container(
          height: 400,
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 134,
                          child: Text(
                            'Demonstrate your proficiency in data processing system design and development, and your ability to build a machine learning model on Google Cloud Platform. Professional Data Engineer collects, transforms and visualizes data to support data-driven decision making.',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Overview",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Spacer(),
                          Text(
                            '$itemCount items',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 170,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            border: Border.all(
                              color: Color(0xff3AE374),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/play.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$videoCount videos'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-check.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$docsCount docs'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-pencil.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$noteCount notes'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 134,
                          child: Text(
                            'Demonstrate your proficiency in data processing system design and development, and your ability to build a machine learning model on Google Cloud Platform. Professional Data Engineer collects, transforms and visualizes data to support data-driven decision making.',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Overview",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Spacer(),
                          Text(
                            '$itemCount items',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 170,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            border: Border.all(
                              color: Color(0xff3AE374),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/play.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$videoCount videos'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-check.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$docsCount docs'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-pencil.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$noteCount notes'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 134,
                          child: Text(
                            'Demonstrate your proficiency in data processing system design and development, and your ability to build a machine learning model on Google Cloud Platform. Professional Data Engineer collects, transforms and visualizes data to support data-driven decision making.',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Overview",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Spacer(),
                          Text(
                            '$itemCount items',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 170,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            border: Border.all(
                              color: Color(0xff3AE374),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/play.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$videoCount videos'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-check.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$docsCount docs'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-pencil.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$noteCount notes'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 134,
                          child: Text(
                            'Demonstrate your proficiency in data processing system design and development, and your ability to build a machine learning model on Google Cloud Platform. Professional Data Engineer collects, transforms and visualizes data to support data-driven decision making.',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Overview",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Spacer(),
                          Text(
                            '$itemCount items',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 170,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            border: Border.all(
                              color: Color(0xff3AE374),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/play.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$videoCount videos'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-check.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$docsCount docs'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(
                              "assets/icons/docs-pencil.svg",
                              height: 18,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff3AE374), BlendMode.srcIn),
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                            title: Text('$noteCount notes'),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).cardColor,
                              size: 15,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
