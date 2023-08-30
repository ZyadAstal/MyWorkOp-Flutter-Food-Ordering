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
import 'package:intl/intl.dart';

import '../../../../routes/routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        title: Text(
          ManagerStrings.signUp,
          style: getBoldTextStyle(fontSize: ManagerFontSizes.s24),
        ),
        backgroundColor: ManagerColors.transparent,

        actions: [
          Padding(
            padding: EdgeInsets.only(right: ManagerWidth.w24),
            child: BaseButton(
                height: ManagerHeight.h48,
                width: ManagerWidth.w70,
                textStyle: getRegularTextStyle(color: ManagerColors.white),
                onPressed: (){
              setState(() {
                Navigator.pushNamed(context, Routes.loginScreen);
              });
            }),
          ),
        ],
        // leading: ,
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: ManagerHeight.h16,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    width: ManagerWidth.w330,
                    height: ManagerHeight.h48,
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
                    height: ManagerHeight.h48,
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
                SizedBox(height: ManagerHeight.h16,),
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
                SizedBox(height: ManagerHeight.h16,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:24, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ManagerStrings.fullName, // Label text
                            style: getMediumTextStyle(
                              fontSize: ManagerFontSizes.s16,
                              color: ManagerColors.black,
                            ),
                          ),
                          SizedBox(height: ManagerHeight.h12,),
                          Container(
                            width: ManagerWidth.w330,
                            height: ManagerHeight.h48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Change this to the desired border color
                              ),
                            ),
                            child: TextField(

                              obscureText: true,
                              decoration: InputDecoration(

                                hintText: ManagerStrings.fullNameHint,
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
                            width: ManagerWidth.w327,
                            height: ManagerHeight.h48,
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
                            width: ManagerWidth.w327,
                            height: ManagerHeight.h48,
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
                    SizedBox(height: ManagerHeight.h16,),
                    Padding(
                      padding: const EdgeInsets.only(left:24, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ManagerStrings.reEnterPassword, // Label text
                            style: getMediumTextStyle(
                              fontSize: ManagerFontSizes.s16,
                              color: ManagerColors.black,
                            ),
                          ),
                          SizedBox(height: ManagerHeight.h12,),
                          Container(
                            width: ManagerWidth.w327,
                            height: ManagerHeight.h48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Change this to the desired border color
                              ),
                            ),
                            child: TextField(

                              obscureText: true,
                              decoration: InputDecoration(

                                hintText: ManagerStrings.reEnterPasswordHint,
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
                            ManagerStrings.dateOfBirth, // Label text
                            style: getMediumTextStyle(
                              fontSize: ManagerFontSizes.s16,
                              color: ManagerColors.black,
                            ),
                          ),
                          SizedBox(height: ManagerHeight.h12,),
                          Container(
                            width: ManagerWidth.w327,
                            height: ManagerHeight.h48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Change this to the desired border color
                              ),
                            ),
                            child: TextFormField(
                              controller: _dateController,
                              readOnly: true,
                              onTap: () async {
                                DateTime? selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                );

                                if (selectedDate != null) {
                                  setState(() {
                                    _dateController.text = DateFormat('MM/dd/yyyy').format(selectedDate);
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                labelText: '',
                                hintText: 'MM/DD/YYYY',
                                hintStyle: TextStyle(
                                  color: ManagerColors.gray,
                                  letterSpacing: 5.0,
                                ),
                                contentPadding: EdgeInsets.fromLTRB(8, 12, 0, 15),
                                suffixIcon: Icon(Icons.calendar_today , color: ManagerColors.primaryColor,),
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
                  title: ManagerStrings.signUp,
                  textStyle: getBoldTextStyle(color: ManagerColors.white),
                  width: ManagerWidth.w320,
                  height: ManagerHeight.h50,
                  bgColor: ManagerColors.buttonColor,

                  onPressed: (){

                  },
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
