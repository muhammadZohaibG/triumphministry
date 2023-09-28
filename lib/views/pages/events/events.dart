import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:triumph_ministry/views/pages/events/event_details.dart';

import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/app_text_field.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';
import '../mission/our_mission_details.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'Upcoming Events',
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
                                // Positioned(
                                //   right: 10,
                                //   bottom: 20,
                                //   child:
                                //   Container(
                                //     height: 30,
                                //     width: 75,
                                //     decoration: BoxDecoration(
                                //         color: Colors.white,
                                //         boxShadow:  [BoxShadow(
                                //           blurRadius: 5,
                                //           color:Colors.grey,
                                //         )],
                                //         borderRadius: BorderRadius.circular(15)
                                //     ),
                                //     child: Padding(
                                //       padding: const EdgeInsets.all(4.0),
                                //       child: Row(
                                //         children: [
                                //           SvgPicture.asset(cross, height: 10,),
                                //           SvgPicture.asset(cross, height: 10,),
                                //           SvgPicture.asset(cross, height: 10,),
                                //           SvgPicture.asset(cross, height: 10,),
                                //           SvgPicture.asset(cross, height: 10,),
                                //           Expanded(child: SizedBox()),
                                //           Text('3.7')
                                //
                                //         ],
                                //       ),
                                //     ),
                                //
                                //   ),
                                // )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> EventDetailsScreen()));
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Image(
                                        //     height: 20,
                                        //     width: 20,
                                        //     image: AssetImage(dp2)),
                                        ReusableContainer(width: width(context)* 0.25,
                                          height: height(context)* 0.03,
                                          color: Color(0xffFFCC00),
                                          child: Center(child: Text('Starts in 10 mins', style: TextStyle(
                                              color: Colors.white, fontSize: 10
                                          ),)),),

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
