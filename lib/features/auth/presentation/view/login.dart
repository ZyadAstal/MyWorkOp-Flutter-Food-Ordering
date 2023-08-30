import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myworkop/core/resources/manager_assets.dart';
import 'package:myworkop/core/resources/manager_colors.dart';
import 'package:myworkop/core/resources/manager_font_sizes.dart';
import 'package:myworkop/core/resources/manager_height.dart';
import 'package:myworkop/core/resources/manager_strings.dart';
import 'package:myworkop/core/resources/manager_text_styles.dart';
import 'package:myworkop/core/resources/manager_width.dart';
import 'package:myworkop/core/widgets/base_button.dart';
import 'package:myworkop/routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ManagerColors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ManagerStrings.welcomeTo,
                  style: getRegularTextStyle(color: ManagerColors.gray),),
                SizedBox(height: ManagerHeight.h9,),
                Image.asset(ManagerAssets.logo2),
                SizedBox(height: ManagerHeight.h24,),
                Center(
                  child: Text(
                    ManagerStrings.title,
                    style: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.Baseblack,
                    ),
                  ),
                ),

                Center(
                  child: Text(
                    ManagerStrings.account,
                    style: getRegularTextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.Baseblack,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ManagerHeight.h38,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    width: ManagerWidth.w330,
                    height: ManagerHeight.h50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ManagerColors.gray,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(ManagerAssets.googleLogo, width: ManagerWidth.w40,height: ManagerHeight.h34,),
                        SizedBox(width: ManagerWidth.w40,),
                        Text(
                          ManagerStrings.google,
                          style: getBoldTextStyle(
                            color: ManagerColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h16,),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    width: ManagerWidth.w330,
                    height: ManagerHeight.h50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ManagerColors.gray,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: ManagerColors.black
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.apple,color: ManagerColors.white,),
                        SizedBox(width: ManagerWidth.w40,),
                        Text(
                          ManagerStrings.apple,
                          style: getBoldTextStyle(
                            color: ManagerColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h6,),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 16,
                        endIndent: 16,
                        thickness: 1,
                      ),
                    ),
                    Text('Or'),
                    Expanded(
                      child: Divider(
                        endIndent: 16,
                        indent: 16,
                        thickness:1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ManagerHeight.h6,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:24, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
                        children: [
                          Text(
                            ManagerStrings.email, // Label text
                            style: getMediumTextStyle(
                              fontSize: ManagerFontSizes.s16,
                              color: ManagerColors.black,
                            ),
                          ),
                          SizedBox(height: ManagerHeight.h12),
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
                    SizedBox(height: ManagerHeight.h16,),
                    Padding(
                      padding: const EdgeInsets.only(left:24, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ManagerStrings.password, // Label text
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

                                hintText: ManagerStrings.passwordHint,
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
                  ],
                ),
                  SizedBox(height: ManagerHeight.h24,),
                //  Center(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       ElevatedButton(
                //         onPressed: () {
                //           // Perform login logic here
                //           // For now, let's just print a message when the button is pressed
                //           print('Login button pressed');
                //         },
                //         style: ElevatedButton.styleFrom(
                //           foregroundColor: Colors.white,
                //           backgroundColor: Colors.blue, // Text color
                //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                //           minimumSize: Size(ManagerWidth.w330, ManagerHeight.h50),
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //         ),
                //         child: Text('Login', style: TextStyle(fontSize: 18)),
                //       ),
                //     ],
                //   ),
                // ),

                BaseButton(
                  title: ManagerStrings.login,
                    textStyle: getBoldTextStyle(color: ManagerColors.white),
                    width: ManagerWidth.w320,
                    height: ManagerHeight.h50,
                    bgColor: ManagerColors.buttonColor,

                    onPressed: (){
                      Navigator.pushNamed(context, Routes.homeScreen);
                },
                ),
                SizedBox(height: ManagerHeight.h24,),
                Center(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, Routes.forgetPasswordScreen);
                      });
                    } ,
                    child: Text(
                      ManagerStrings.forgetPassword,
                    style: getRegularTextStyle(
                     fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.buttonColor,
                    )

                        ,),
                  ),
                ),
                SizedBox(height: ManagerHeight.h40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        ManagerStrings.notHaveAnAccountYet,
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
                            Navigator.pushNamed(context, Routes.registerScreen);
                          });
                        } ,
                        child: Text(
                          ManagerStrings.signUp,
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

          ],
        ),
      ),
    );
  }
}
