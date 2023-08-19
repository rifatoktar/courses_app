import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/course_detail_page.dart';

class RecommendedCard extends StatelessWidget {
  final Color colorName;
  final String iconLink;
  final String category;
  final String courseName;
  final String companyName;
  final double courseRate;
  final int courseReview;
  final int courseTime;
  final String language;
  final int userAge;
  const RecommendedCard(
      {super.key,
      required this.colorName,
      required this.iconLink,
      required this.category,
      required this.courseName,
      required this.companyName,
      required this.courseRate,
      required this.courseReview,
      required this.courseTime,
      required this.language,
      required this.userAge});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CourseDetailPage()),
          );
        },
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 0,
            backgroundColor: Colors.transparent,
            alignment: Alignment.centerLeft),
        child: Row(
          children: [
            Container(
              height: 140,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: colorName),
            ),
            Container(
              height: 140,
              width: MediaQuery.sizeOf(context).width * .89,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  border: Border.all(color: colorName)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          iconLink,
                          height: 15,
                          fit: BoxFit.scaleDown,
                          colorFilter:
                              ColorFilter.mode(colorName, BlendMode.srcIn),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          category,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: colorName),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: 230,
                            child: Text(
                              courseName,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: colorName),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              companyName,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: colorName,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "$courseRate",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Spacer(),
                        Text(
                          "$courseReview review",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/time.svg",
                              height: 15,
                              fit: BoxFit.scaleDown,
                              colorFilter:
                                  ColorFilter.mode(colorName, BlendMode.srcIn),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "$courseTime hour",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/comment.svg",
                              height: 15,
                              fit: BoxFit.scaleDown,
                              colorFilter:
                                  ColorFilter.mode(colorName, BlendMode.srcIn),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              language,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/user-check.svg",
                              height: 15,
                              fit: BoxFit.scaleDown,
                              colorFilter:
                                  ColorFilter.mode(colorName, BlendMode.srcIn),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "$userAge+",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ],
                        )
                      ],
                    )
                  ]),
            )
          ],
        ));
  }
}
