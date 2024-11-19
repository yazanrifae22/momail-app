import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:momail/core/util/themes/colors.dart';
<<<<<<< HEAD
import 'package:momail/core/util/themes/theme.dart';
import 'package:momail/features/splash/presentation/pages/main_walkthrow/main_walkthrow.dart';
=======
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
>>>>>>> adee86cd01a43a5559ff4947fb909079fe4bd0b2

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        theme: getAppTheme(context),
        home: const SplashScreenpage(),
      ),
    );
  }
}

class SplashScreenpage extends StatefulWidget {
  const SplashScreenpage({
    Key? key,
  }) : super(key: key);

  // always marked "final".

  @override
  State<SplashScreenpage> createState() => _SplashScreenpage();
}

class _SplashScreenpage extends State<SplashScreenpage>
    with SingleTickerProviderStateMixin {
  late AnimationController splashController;
  @override
  // ignore: must_call_super
  void initState() {
    splashController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this)
      ..addListener(() => setState(() {}));
    splashController.forward();
    splashController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MainWalkthrow()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Positioned(
            top: 59.h,
            left: 106.64.w,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/main_mail_iconl.png",
                  width: 40.51.w,
                  height: 35.h,
=======
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Splash"),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                child: Text(
                  AppLocalizations.of(context)!.hello,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Text(
                "hello",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "hello",
                style: Theme.of(context).textTheme.headline3,
              ),
              Container(
                color: Colors.black,
                child: Text(
                  "hello",
                  style: Theme.of(context).textTheme.headline4,
>>>>>>> adee86cd01a43a5559ff4947fb909079fe4bd0b2
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0.w),
                  child: Text(
                    "momail",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                )
              ],
            )),
        Column(children: [
          Container(
            height: 473.54.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/background.png"))),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0.h),
            child: Text(
              "Design and send\nmarketing emails on the\nmove",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 47.w, top: 30.h),
            child: Row(
              children: [
                Image(
                  image: const AssetImage("assets/images/crop.png"),
                  width: 9.w,
                  height: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    "Easy drag and drop blocks for design",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 47.w, top: 12.h, bottom: 63.h),
            child: Row(
              children: [
                Image(
                  image: const AssetImage("assets/images/crop.png"),
                  width: 9.w,
                  height: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    "Track and analyse campaigns later",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )
              ],
            ),
          ),
        ]),
        Positioned(
            bottom: 0,
            child: Container(
              child: Center(
                child: Text(
                  "Enter",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ),
              width: 375.w,
              height: 83.h,
              color: AppColors.primary,
            ))
      ]),
    ));
  }
}
