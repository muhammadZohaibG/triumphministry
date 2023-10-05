import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:triumph_ministry/views/pages/events/events.dart';
import 'package:triumph_ministry/views/pages/home/component/tab_provider.dart';
import 'package:triumph_ministry/views/pages/home/profile.dart';
import 'package:triumph_ministry/views/pages/mission/our_mission.dart';
import 'package:triumph_ministry/views/widget/big_divider.dart';
import 'package:triumph_ministry/views/pages/home/component/home_tab.dart';
import 'package:triumph_ministry/views/widget/reusable_widgets/drawer.dart';

import '../../../constant/app_color.dart';
import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),

          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          // automaticallyImplyLeading: false,

          title: Row(
            children: [
              // Icon(
              //   Icons.menu,
              //   color: Color(0xff1C274C),
              //   size: 4 * SizeConfig.heightMultiplier,
              // ),
              // Container(
              //   height: 4 * SizeConfig.heightMultiplier,
              //   width: 7 * SizeConfig.widthMultiplier,
              //   decoration: const BoxDecoration(
              //       shape: BoxShape.circle,
              //       image: DecorationImage(
              //           image: AssetImage("asset/images/Profile Pic.png"))),
              // ),

              const Spacer(),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
                child: Image(image: AssetImage(dp2), height: 50,))
            ],
          )),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Home', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              Container(
                height: SizeConfig.heightMultiplier* 26.8,
                width: SizeConfig.widthMultiplier * 100,
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    const Image(image: AssetImage(bible),
                     fit: BoxFit.cover,),
                    Container(
                      // height: SizeConfig.heightMultiplier* 26,
                      // width: SizeConfig.widthMultiplier * 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black26
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableContainer(width: width(context)* 0.18,
                          height: height(context)* 0.04,
                          color: Color(0xffFFCC00),
                          child: Center(child: Text('Latest', style: TextStyle(
                            color: Colors.white
                          ),)),),
                          SizedBox(height: 5,),
                          Text('Teach Children',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12, color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.
                  symmetric(horizontal: 15.0, ),
                child: Big_divider(),
              ),
              Consumer<TabProvider>(
                builder: (context,value, child){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      tabProvider.index== 0?
                      HomeTabBarColor(height: height(context)*0.03,
                        width: width(context)*0.25,

                        child: Center(child: Text('Our Mission',style: TextStyle(color: Colors.white))),):
                      HomeTabBar(
                        onTap: () {
                          tabProvider.updateTab(0);
                        },
                        height: height(context)*0.03,
                        width: width(context)*0.25,
                        child: Center(child: Text('Our Mission')),)
                      ,

                      tabProvider.index == 1?

                      HomeTabBarColor(
                        height: height(context)*0.03,
                        width: width(context)*0.35,

                        child: Center(child: Text('Upcoming Events',style: TextStyle(color: Colors.white))),):
                      HomeTabBar(
                        onTap: () {
                          tabProvider.updateTab(1);

                        },
                        height: height(context)*0.03,
                        width: width(context)*0.35,
                        child: Center(child: Text('Upcoming Events')),),

                      tabProvider.index == 2?

                      HomeTabBarColor(

                        height: height(context)*0.03,
                        width: width(context)*0.22,
                        child: Center(child: Text('Donations',style: TextStyle(color: Colors.white),)),):
                      HomeTabBar(
                        onTap: (){
                          tabProvider.updateTab(2);
                        },
                        height: height(context)*0.03,
                        width: width(context)*0.22,
                        child: Center(child: Text('Donations')),),
                    ],
                  );
                },
              ),
              SizedBox(
                height: height(context)*0.02,
              ),

              Consumer<TabProvider>(
                builder: (context,value, child){
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){
                              tabProvider.index ==0?
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> OurMission())):
                              tabProvider.index ==1?
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> EventsScreen())):
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> OurMission()));
                            },
                            child: Text(
                              'View All',
                              style: TextStyle(
                                color: Color(0xFFFFCC00),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      tabProvider.index == 0?
                      Container(
                        height: height(context)*0.27,
                        // color: Colors.pink,
                        child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(mission1),height: height(context)* 0.2,width: width(context)*0.3,),
                                    SizedBox(height: 5,),
                                    Container(
                                        width: width(context)*0.2,
                                        child: const Text('Teach Children', overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),))
                                  ],
                                ),
                              );
                            }),
                      ):
                      tabProvider.index==1?
                      Container(
                        height: height(context)*0.27,
                        // color: Colors.pink,
                        child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(event1),height: height(context)* 0.2,width: width(context)*0.3,),
                                    SizedBox(height: 5,),
                                    Container(
                                        width: width(context)*0.2,
                                        child: Text('Good Shepherd Evangelical Church', overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),))
                                  ],
                                ),
                              );
                            }),
                      ):
                      Container(
                        height: height(context)*0.27,
                        // color: Colors.pink,
                        child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(mission1),height: height(context)* 0.2,width: width(context)*0.3,),
                                    SizedBox(height: 5,),
                                    Container(
                                        width: width(context)*0.2,
                                        child: Text('Donations', overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),))
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Big_divider(),
              ),
              Text(
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
              Container(
                width: width(context),
                height: height(context)*0.105,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(bgImage))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
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
