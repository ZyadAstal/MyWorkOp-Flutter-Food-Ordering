import 'package:flutter/material.dart';
import 'package:myworkop/core/resources/manager_font_sizes.dart';
import 'package:myworkop/core/resources/manager_height.dart';
import 'package:myworkop/core/resources/manager_strings.dart';
import 'package:myworkop/core/resources/manager_text_styles.dart';
import 'package:myworkop/core/resources/manager_width.dart';
import 'package:myworkop/core/widgets/show_dialog_screen.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../routes/routes.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        title: Text(
          ManagerStrings.forgetPasswordTitle,
          style: getBoldTextStyle(fontSize: ManagerFontSizes.s24),
        ),
        backgroundColor: ManagerColors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(height: ManagerHeight.h16,),
          Text(
            ManagerStrings.descPage,
            style: getRegularTextStyle(),
          ),
          SizedBox(height: ManagerHeight.h34,),
          Padding(
            padding: const EdgeInsets.only(left:24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ManagerStrings.email, // Label text
                  style: getMediumTextStyle(
                    fontSize: ManagerFontSizes.s16,
                    color: ManagerColors.black,
                  ),
                ),
                SizedBox(height: ManagerHeight.h12,),
                Container(
                  width: ManagerWidth.w330,
                  height: ManagerHeight.h50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.grey, // Change this to the desired border color
                    ),
                  ),
                  child: TextField(

                    obscureText: true,
                    decoration: InputDecoration(

                      hintText: ManagerStrings.emailHint,
                      hintStyle: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.gray,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ManagerHeight.h24,),
          BaseButton(
            title: ManagerStrings.send,
            textStyle: getMediumTextStyle(fontSize: ManagerFontSizes.s16,color: ManagerColors.white),
            width: ManagerWidth.w320,
            height: ManagerHeight.h50,
            bgColor: ManagerColors.buttonColor,

            onPressed: (){
                setState(() {
                  ShowDialogScreen(context);
                });
            },
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      ManagerStrings.alreadyHaveAnAccount,
                      style: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.black,
                      )

                      ,),
                  ),
                  SizedBox(width: ManagerWidth.w4,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, Routes.loginScreen);
                        });
                      } ,
                      child: Text(
                        ManagerStrings.login,
                        style: getRegularTextStyle(
                          fontSize: ManagerFontSizes.s16,
                          color: ManagerColors.buttonColor,
                        )

                        ,),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
