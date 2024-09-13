import 'package:amantac/core/routing/app_router.dart';
import 'package:amantac/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Amantac extends StatelessWidget {
  final AppRouter appRouter;
  const Amantac({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Appointment App',
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          // primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingView,
      ),
    );
  }
}
