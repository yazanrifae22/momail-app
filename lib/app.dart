import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:momail/core/util/generate_screen.dart';
import 'package:momail/core/util/themes/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/splash/presentation/pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return SplashPage();
=======
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        theme: getAppTheme(context),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: GenerateScreen.onGenerate,
        // initialRoute: RouteName.splashPage,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate
        ],
        supportedLocales: const [Locale('en', '')],
      ),
    );
>>>>>>> adee86cd01a43a5559ff4947fb909079fe4bd0b2
  }
}
