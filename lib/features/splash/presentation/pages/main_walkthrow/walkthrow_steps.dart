import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalkthrowSteps extends StatelessWidget {
  String? image;
  String? stepNum;
  String? stepDetiles;
  WalkthrowSteps(
      {Key? key,
      required this.image,
      required this.stepNum,
      required this.stepDetiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 492.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(image.toString()))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 68.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/white_momail_icon.png",
                    width: 28.93.w,
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.0.w),
                    child: Text(
                      "NewCo",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 141.h),
              child: Center(
                child: Text(
                  "Sending a momail is\nsimple 3 steps",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Text(
            stepNum.toString(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.h),
          child: Text(stepDetiles.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3),
        )
      ],
    );
  }
}
