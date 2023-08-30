import 'package:flutter/material.dart';

import '../../../core/resources/manager_assets.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_height.dart';
import '../../../core/resources/manager_icon_sizes.dart';
import '../../../core/resources/manager_raduis.dart';
import '../../../core/resources/manager_strings.dart';
import '../../../core/resources/manager_text_styles.dart';
import '../../../core/resources/manager_width.dart';

List<Widget> pages = [

  Column(
    children: [
      Container(
        width: double.infinity,
        height: ManagerHeight.h750,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(ManagerAssets.splash1,), fit: BoxFit.fill
          ),
        ),
        child:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: ManagerWidth.w24 ,top: ManagerHeight.h80,),
                      child: Text(
                        ManagerStrings.hi,
                        style: getBoldTextStyle(fontSize: ManagerFontSizes.s24,color: ManagerColors.white),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: ManagerWidth.w24 ,top: ManagerHeight.h12,),
                      child: Text(
                        ManagerStrings.whatWouldYouLikeToOrder,
                        style: getRegularTextStyle(color: ManagerColors.white),
                      ),

                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0,),
                      child: Text(
                        ManagerStrings.today,
                        style: getRegularTextStyle(color: ManagerColors.white),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: ManagerWidth.w70 ,top: ManagerHeight.h85,),
                      child: Icon(Icons.person_outline, size: ManagerIconSizes.s50,color: ManagerColors.white,),
                    )

                  ],
                ),
              ],
            ),
            SizedBox(height: ManagerHeight.h12,),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(ManagerRadius.r30),
                        topRight: Radius.circular(ManagerRadius.r30)),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Row(

                    ),
                  ],
                ),
              ),

            )
          ],
        ),

      ),


    ],),

  Center(

    child: Icon(Icons.message),

  ),

  Center(

    child: Icon(Icons.person),

  ),

];