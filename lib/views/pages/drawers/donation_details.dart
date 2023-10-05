import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:triumph_ministry/views/pages/events/event_details.dart';

import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/app_text_field.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';
import '../mission/our_mission_details.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar:AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
        centerTitle: true,
      title:
          Text(
            'Donation',
            style: TextStyle(color: Colors.black),
          ),

    ),


    body:   SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 8,right: 8, bottom: 10),

                child:Column(
                  children: [
                    Container(
                      width:SizeConfig.widthMultiplier* 100,
                      height:SizeConfig.heightMultiplier* 30,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/donationn.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height:SizeConfig.heightMultiplier* 2,),
                    Container(
                      width: SizeConfig.widthMultiplier* 90,
                      height: 4,
                      decoration: BoxDecoration(color: Color(0xFFDADADA)),
                    ),
                    SizedBox(height:SizeConfig.heightMultiplier* 2.5,),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 90,
                      height: SizeConfig.heightMultiplier * 40,
                      child: Text(
                        'Forem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent convallis. Sed ut vulputate nisi. Integer in felis sed leo vestibulum venenatis. Suspendisse quis arcu sem. Aenean feugiat ex eu vestibulum vestibulum. Morbi a eleifend magna. Nam metus lacus, porttitor eu mauris a, blandit ultrices nibh. Mauris sit amet magna non ligula vestibulum eleifend. Nulla varius volutpat turpis sed lacinia. Nam eget mi in purus lobortis eleifend. Sed nec ante dictum sem condimentum ullamcorper quis venenatis nisi. Proin vitae facilisis nisi, ac posuere leo.\n',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height:0.9,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                    SizedBox(height:SizeConfig.heightMultiplier* 2,),

                    SizedBox(
                      width: SizeConfig.widthMultiplier * 90,
                      child: Text(
                        'dictum sem condimentum ullamcorper quis venennisi, ac posuere leo.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.8,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                    SizedBox(height:SizeConfig.heightMultiplier* 3,),
                    Container(
                      width: SizeConfig.widthMultiplier * 85,
                      height: SizeConfig.heightMultiplier * 15,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Color(0xFFFFCC00)),
                        ),
                      ),
                      child:  Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Rorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1,
                            letterSpacing: -0.17,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.heightMultiplier * 3,),

                    Container(
                      width: SizeConfig.widthMultiplier * 40,
                      height: SizeConfig.heightMultiplier * 8,
                      decoration: ShapeDecoration(
                        color: Color(0xFF0C0C0C),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 3, color: Color(0xFFFFCC00)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image.asset('assets/images/donationbuton.png', scale: 2.5,),
                            SizedBox(width: SizeConfig.widthMultiplier*0.7,),
                            Text(
                              'Donate',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFCC00),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),



                    ),
                    SizedBox(height: SizeConfig.heightMultiplier*6,),
Padding(
  padding: EdgeInsets.symmetric(horizontal: 85),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [

      Row(

        children: [

          Image.asset('assets/images/facebook.png', scale: 2.5,),

          SizedBox(width: SizeConfig.widthMultiplier*0.7,),

          Text(

            'Facebook',

            textAlign: TextAlign.center,

            style: TextStyle(

              color: Colors.black,

              fontSize: 12,

              fontFamily: 'Poppins',

              fontWeight: FontWeight.w400,

              height: 0,

            ),

          ),

        ],

      ),



      Row(

        children: [

          Image.asset('assets/images/instagram.png', scale: 2.5,),

          SizedBox(width: SizeConfig.widthMultiplier*0.7,),

          Text(

            'Instagram',

            textAlign: TextAlign.center,

            style: TextStyle(

              color: Colors.black,

              fontSize: 12,

              fontFamily: 'Poppins',

              fontWeight: FontWeight.w400,

              height: 0,

            ),

          ),

        ],

      ),

    ],

  ),
),


                    SizedBox(height:SizeConfig.heightMultiplier* 2,),
                    Container(
                      width: SizeConfig.widthMultiplier* 90,
                      height: 4,
                      decoration: BoxDecoration(color: Color(0xFFDADADA)),
                    ),
                    SizedBox(height:SizeConfig.heightMultiplier* 4,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Daily scripture',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                            letterSpacing: -0.17,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: SizeConfig.widthMultiplier * 85,
                      height: SizeConfig.heightMultiplier * 14,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(bgImage))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                        child: Center(child: Text('The wicked flee when no one is pursuing, but the righteous are bold as a lion')),
                      ),
                    )
                  ],
                ),

            ),
          ),

    );
  }
}

