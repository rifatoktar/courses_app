import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InProgressCard extends StatelessWidget {
  final String iconLink;
  final Color colorName;
  final String courseName;
  final String courseSize;
  final String companyName;
  final double progressValue;
  final int completedPercent;
  final Color progressColor;
  const InProgressCard(
      {super.key,
      required this.iconLink,
      required this.colorName,
      required this.courseName,
      required this.courseSize,
      required this.companyName,
      required this.progressValue,
      required this.completedPercent, required this.progressColor,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          elevation: 0,
          backgroundColor: Colors.transparent,
          alignment: Alignment.centerLeft),
      child: Row(
        children: [
          Container(
            height: 125,
            width: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: colorName),
          ),
          Container(
            height: 125,
            width: 234,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(color: colorName),
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
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
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).iconTheme.color!, BlendMode.srcIn),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: SizedBox(
                        width: 120,
                        child: Text(
                          courseName,
                           overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      courseSize,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Spacer(),
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
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  height: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: progressValue,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(progressColor),
                      backgroundColor: Color(0xffE7E5E5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Completed",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Spacer(),
                    Text(
                      "%$completedPercent",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
