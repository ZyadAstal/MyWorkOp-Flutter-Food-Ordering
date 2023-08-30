import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myworkop/constans.dart';
import 'package:myworkop/core/resources/manager_assets.dart';
import 'package:myworkop/core/resources/manager_font_sizes.dart';
import 'package:myworkop/core/resources/manager_height.dart';
import 'package:myworkop/core/resources/manager_strings.dart';
import 'package:myworkop/core/resources/manager_text_styles.dart';
import 'package:myworkop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:myworkop/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: Constants.splashTime,
      ),
          () => Navigator.pushReplacementNamed(
        context,
        Routes.loginScreen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(ManagerAssets.splash1,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ManagerAssets.logo,
                ),
                SizedBox(height: ManagerHeight.h12),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
