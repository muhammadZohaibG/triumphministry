import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triumph_ministry/constant/asset_images.dart';
import 'package:triumph_ministry/constant/sizeconfig.dart';
import 'package:triumph_ministry/views/pages/mission/our_mission_details.dart';
import 'package:triumph_ministry/views/widget/reusable_widgets/app_text_field.dart';
import 'package:triumph_ministry/views/widget/reusable_widgets/reuseable_container.dart';

class OurMission extends StatefulWidget {
  const OurMission({Key? key}) : super(key: key);

  @override
  State<OurMission> createState() => _OurMissionState();
}

class _OurMissionState extends State<OurMission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'Our Missions',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                hintText: 'Search...',
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  // scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                return  Padding(
                  padding: const EdgeInsets.only(bottom:15.0),
                  child: Column(
                    children: [
                      Container(
                        width: width(context) * 0.85,
                        height: height(context) * 0.18,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            // Container(
                            //   clipBehavior: Clip.antiAlias,
                            //   decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(16)),
                            //   child:  CachedNetworkImage(
                            //     width: width(context),
                            //     height: height(context),
                            //     fit: BoxFit.cover,
                            //     imageUrl: ,
                            //     placeholder: (context, url) => Container(child: Center(child: CircularProgressIndicator())),
                            //     errorWidget: (context, url, error) => Icon(Icons.error),
                            //   ),
                            // ),
                            const Center(child: Image(image: AssetImage(missions1))),
                            // Positioned(
                            //   bottom: -45,
                            //   child:
                            // ),
                            Positioned(
                                right: 10,
                                top: 10,
                                child: SvgPicture.asset(unfav)),
                            Positioned(
                              right: 10,
                              bottom: 20,
                              child:
                              Container(
                                height: 30,
                                width: 75,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow:  [BoxShadow(
                                      blurRadius: 5,
                                      color:Colors.grey,
                                    )],
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(cross, height: 10,),
                                      SvgPicture.asset(cross, height: 10,),
                                      SvgPicture.asset(cross, height: 10,),
                                      SvgPicture.asset(cross, height: 10,),
                                      SvgPicture.asset(cross, height: 10,),
                                      Expanded(child: SizedBox()),
                                      Text('3.7')

                                    ],
                                  ),
                                ),

                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> OurMissionDetails()));
                        },
                        child: Container(
                          width: width(context) * 0.85,
                          height: height(context)*0.07,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(0, 2))
                              ],
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              color: Colors.white),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width(context)*0.45,
                                      // color: Colors.pink,
                                      child: Text(
                                        'Good Shepherd Evangelical Church',overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Image(
                                    //     height: 20,
                                    //     width: 20,
                                    //     image: AssetImage(dp2)),
                                    Icon(Icons.location_on, color: Color(0xffFFCC00),),
                                    Container(
                                      width: width(context)*0.25,
                                      child: Text(
                                        'Serilingampalle  HYD, 500019',overflow: TextOverflow.ellipsis,maxLines: 2,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );

              })
            ],
          ),
        ),
      ),
    );
  }
}

