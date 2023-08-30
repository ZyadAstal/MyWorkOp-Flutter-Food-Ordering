import 'package:flutter/material.dart';
import 'package:myworkop/core/resources/manager_colors.dart';
import 'package:myworkop/core/resources/manager_font_sizes.dart';
import 'package:myworkop/core/resources/manager_height.dart';
import 'package:myworkop/core/resources/manager_strings.dart';
import 'package:myworkop/core/resources/manager_text_styles.dart';
import 'package:myworkop/core/resources/manager_width.dart';
import 'package:myworkop/core/widgets/base_button.dart';

ShowDialogScreen (BuildContext context) {
   showDialog(
       context: context,
       builder: (BuildContext context) =>
           Dialog(
             child: Padding(
               padding:  EdgeInsets.only(top: ManagerHeight.h24, left: ManagerWidth.w8, right:  ManagerWidth.w8, bottom: ManagerHeight.h24),
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Text(ManagerStrings.sent,
                     style: getBoldTextStyle(fontSize: ManagerFontSizes.s24),
                   ),
                   SizedBox(height: ManagerHeight.h8,),
                   Text(
                     ManagerStrings.check,
                     style: getRegularTextStyle(color: ManagerColors.gray),
                   ),
                   Text(
                     ManagerStrings.spam,
                     style: getRegularTextStyle(color: ManagerColors.gray),
                   ),
                   SizedBox(height: ManagerHeight.h24,),
                   BaseButton(
                     title: ManagerStrings.okay,
                     textStyle: getBoldTextStyle(color: ManagerColors.white),
                     width: ManagerWidth.w280,
                     height: ManagerHeight.h48,
                     bgColor: ManagerColors.buttonColor,

                     onPressed: () {

                     },
                   )
                 ],
               ),
             ),
           )

   );
 }