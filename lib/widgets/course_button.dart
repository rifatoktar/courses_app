import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseButton extends StatelessWidget {
  final Color colorName;
  final String iconLink;
  final String courseCategory;
  const CourseButton(
      {super.key, required this.colorName, required this.iconLink, required this.courseCategory});

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
      child: Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorName,
        ),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconLink,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              height: 15,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(width: 10,),
            Text(courseCategory, style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15,
            color: Colors.white,
                      fontWeight: FontWeight.bold,),)
          ],
        )),
      ),
    );
  }
}
