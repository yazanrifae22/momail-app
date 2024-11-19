// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:momail/core/util/themes/colors.dart';
import 'package:momail/features/splash/presentation/pages/main_walkthrow/walkthrow_steps.dart';

class MainWalkthrow extends StatefulWidget {
  const MainWalkthrow({Key? key}) : super(key: key);

  @override
  _MainWalkthrowState createState() => _MainWalkthrowState();
}

class _MainWalkthrowState extends State<MainWalkthrow> {
  int currentPage = 0;
  List<Map<String, String>> stepData = [
    {
      "text": "Select or create a\nRecipient",
      "image": "assets/images/first_step.png",
      "step": "Step 1"
    },
    {
      "text": "Choose the pre-built\nBlocks to send",
      "image": "assets/images/sec_step.png",
      "step": "Step 2"
    },
    {
      "text": "Set a Reminder and\nsend!",
      "image": "assets/images/thir_step.png",
      "step": "Step 3"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 620.h,
                width: double.infinity,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: stepData.length,
                    itemBuilder: (context, index) => WalkthrowSteps(
                          image: stepData[index]["image"],
                          stepNum: stepData[index]["step"],
                          stepDetiles: stepData[index]["text"],
                        )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 14.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      stepData.length, (index) => buildDot(index: index)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage("assets/images/blue_crop.png"),
                      width: 10.w,
                      height: 21.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        "Watch Intro Video",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: AppColors.primary),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: SizedBox(
                  width: 375.w,
                  height: 83.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    ),
                  )))
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 14.w),
      height: 8.h,
      width: 8.h,
      decoration: BoxDecoration(
        color: currentPage == index ? AppColors.primary : AppColors.blueColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
