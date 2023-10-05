import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:triumph_ministry/views/pages/events/event_details.dart';
import 'package:triumph_ministry/views/pages/home/component/home_tab.dart';
import 'package:triumph_ministry/views/pages/home/component/tab_provider.dart';
import 'sermon_video.dart';

import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/app_text_field.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';
import '../mission/our_mission_details.dart';

class Sermon_details extends StatefulWidget {
  const Sermon_details({Key? key}) : super(key: key);

  @override
  State<Sermon_details> createState() => _Sermon_detailsState();
}

class _Sermon_detailsState extends State<Sermon_details> {

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabProvider>(context,listen: false);
    return Scaffold(
       backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
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
          'Sermons',
          style: TextStyle(color: Colors.black),
        ),

      ),


      body: Padding(

      padding: const EdgeInsets.all(15.0),
        child: Column(
            children: [
              AppTextField(
                // prefix: Icon(Icons.search, color: Colors.black,),
                prefixIconButton: const Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.black,
                ),
                suffixIconButton: Padding(

                  padding: EdgeInsets.only(right: 5),
                  child: Image.asset('assets/images/filterHd.png' ,scale: 1.8,),
                ),
                hintText: 'Search...',
              ),
             SizedBox(
                height:SizeConfig.heightMultiplier * 3,
              ),
              Consumer<TabProvider>(
                builder: (context,value, child){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      tabProvider.index== 0?
                      HomeTabBarColor(height: height(context)*0.035,
                        width: width(context)*0.25,

                        child: Center(child: Text('Videos',style: TextStyle(color: Colors.white))),):
                      HomeTabBar(
                        onTap: () {
                          tabProvider.updateTab(0);
                        },
                        height: height(context)*0.035,
                        width: width(context)*0.25,
                        child: Center(child: Text('Videos')),)
                      ,
                   SizedBox(width: SizeConfig.widthMultiplier*4,),
                      tabProvider.index == 1?

                      HomeTabBarColor(
                        height: height(context)*0.035,
                        width: width(context)*0.35,

                        child: Center(child: Text('Recordings',style: TextStyle(color: Colors.white))),):
                      HomeTabBar(
                        onTap: () {
                          tabProvider.updateTab(1);

                        },
                        height: height(context)*0.035,
                        width: width(context)*0.35,
                        child: Center(child: Text('Recordings')),),
                      SizedBox(
                        height:SizeConfig.heightMultiplier * 3,
                      ),


                    ],
                  );
                },
              ),

              SizedBox(height: SizeConfig.heightMultiplier*3,),
                Consumer<TabProvider>(
                builder: (context,value, child){
                  return Expanded(
                    child: Column(children: [
                      tabProvider.index == 0?
                                Expanded(
                                
                                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 15.0,
                    ),
                    itemCount: 10, // Change this according to your actual number of items
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          String  videoUrl= '';
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>SermonVideo(videoUrl: videoUrl,) ));
                  
                        },
                        child: Container(
                          width: SizeConfig.widthMultiplier * 40,
                          height: SizeConfig.heightMultiplier * 30,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x14F6BB22),
                                blurRadius: 10,
                                offset: Offset(0, 8),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: SizeConfig.heightMultiplier * 16,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/Sermonimage.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: SizeConfig.heightMultiplier * 5, // Adjust this to position the play button vertically
                                    left: (SizeConfig.widthMultiplier * 40 - SizeConfig.widthMultiplier * 10) / 2, // Center the play button horizontally
                                    child: Container(
                                      width: SizeConfig.widthMultiplier * 10,
                                      height: SizeConfig.heightMultiplier * 5,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                      ),
                                      child: Icon(Icons.play_arrow,color: Color(0xFFFFCC00),),
                                    ),
                                  ),
                                ],
                              ),
                  
                              SizedBox(height: SizeConfig.heightMultiplier * 1.5),
                  
                             Padding(
                               padding:EdgeInsets.symmetric(horizontal: 5),
                               child: Column
                                 (
                               //  mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                     Text(
                                       'Cleansing all who want',
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 9,
                                         fontFamily: 'Roboto',
                                         fontWeight: FontWeight.w500,
                                         height: 0.15,
                                         letterSpacing: -0.17,
                                       ),
                                     ),
                                     Container(
                                       width:SizeConfig.widthMultiplier*8,
                                       height: SizeConfig.heightMultiplier*2.3,
                                       decoration: ShapeDecoration(
                                         color: Color(0xFFFFCC00),
                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                         shadows: [
                                           BoxShadow(
                                             color: Color(0x3F000000),
                                             blurRadius: 4,
                                             offset: Offset(0, 4),
                                             spreadRadius: 0,
                                           )
                                         ],
                                       ),
                                       child:  Center(
                                         child: Text(
                                           '22 MIN',
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 5,
                                             fontFamily: 'Poppins',
                                             fontWeight: FontWeight.w500,
                                             height: 0.22,
                                             letterSpacing: -0.17,
                                           ),
                                         ),
                                       ),
                                     ),
                  
                                   ],),
                  
                                   SizedBox(height: SizeConfig.heightMultiplier * 0.5),
                                   Text(
                                     'BY Christ Gospel Church',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 6,
                                       fontFamily: 'Poppins',
                                       fontWeight: FontWeight.w200,
                                       height: 0.50,
                                       letterSpacing: -0.17,
                                     ),
                                   ),
                  
                               ],),
                             ),
                  
                            ],
                          ),
                        ),
                      );
                    },
                                  ),
                                ):
                           
                                tabProvider.index == 1?
                               
                                Expanded(
                                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                  
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 1), // Adjust the bottom margin as needed
                          child: Container(
                            height: SizeConfig.heightMultiplier * 10, // Adjust this to position the play button vertically
                            color: Colors.transparent, // Adjust the opacity as needed
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/recordings.png', scale: 2,),
                                SizedBox(width: SizeConfig.widthMultiplier * 1,),
                                Text(
                                  'Above all powers',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.06,
                                    letterSpacing: -0.17,
                                  ),
                                ),
                                SizedBox(width: SizeConfig.widthMultiplier * 25,),
                                Container(
                                  width: SizeConfig.widthMultiplier * 12,
                                  height: SizeConfig.heightMultiplier * 6,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  child: Icon(Icons.play_arrow, color: Color(0xffFFCC00), size: 25,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                                  ),
                                ):Container(),
                  
                  
                    ],),
                  );
              
                }),
            ],
          ),
      ),

    );
  }

}