import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myworkop/constans.dart';
import 'package:myworkop/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        splitScreenMode: true,
        designSize: const Size(
        Constants.designDeviceWidth,
        Constants.designDeviceHeight,
    ),
    builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: RouteGenerator.getRoute,
      );
    }
    );
  }
}
