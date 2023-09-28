import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/back_arrow.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({Key? key}) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height(context)* 0.5,
              width: width(context),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))
              ),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,

                        child: ClipRRect(
                            child: Image(image: AssetImage(header))
                          // CachedNetworkImage(
                          //   width: width(context),
                          //   height: height(context),
                          //   fit: BoxFit.fill,
                          //   imageUrl: '',
                          //   placeholder: (context, url) => const Center(
                          //       child: CircularProgressIndicator()),
                          //   errorWidget: (context, url, error) =>
                          //   const Center(child: Icon(Icons.error)),
                          // ),
                        ),
                      ),
                      Positioned(
                          top: -10,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: width(context) * 0.9,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: height(context)*0.04,
                                      width: height(context)*0.04,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: BackArrow(
                                          color: Colors.white,
                                          ontap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      )),
                                  SvgPicture.asset(unfav),

                                ],
                              ),
                            ),
                          )),

                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Good Shepherd Evangelical Church'
                          , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,),
                        // Container(
                        //   height: 30,
                        //   width: 75,
                        //   decoration: BoxDecoration(
                        //       color: Colors.black,
                        //       boxShadow:  [BoxShadow(
                        //         blurRadius: 5,
                        //         color:Colors.grey,
                        //       )],
                        //       borderRadius: BorderRadius.circular(15)
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        //     child: Row(
                        //       children: [
                        //         SvgPicture.asset(cross, height: 10,color: Colors.white,),
                        //         SvgPicture.asset(cross, height: 10,color: Colors.white),
                        //         SvgPicture.asset(cross, height: 10,color: Colors.white),
                        //         SvgPicture.asset(cross, height: 10,color: Colors.white,),
                        //         SvgPicture.asset(cross, height: 10,color: Colors.white,),
                        //         Expanded(child: SizedBox()),
                        //         Text('3.7', style: TextStyle(color: Colors.white),)
                        //
                        //       ],
                        //     ),
                        //   ),
                        //
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: const Row(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Image(
                        //     height: 20,
                        //     width: 20,
                        //     image: AssetImage(dp2)),
                        Icon(Icons.location_on, color: Color(0xffFFCC00), size: 20,),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Serilingampalle  HYD, 500019',overflow: TextOverflow.ellipsis,maxLines: 2,
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        ReusableContainer(width: width(context)* 0.2,
                          height: height(context)* 0.03,
                          color: Color(0xffFFCC00),
                          child: Center(child: Text('Hours', style: TextStyle(
                              color: Colors.white
                          ),)),),
                        SizedBox(width: 10,),
                        Text('12–3:30pm, 6–7pm', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  SizedBox(height: height(context)*0.02,),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque libero eros,'
                      ' efficitur eu convallis eu, sollicitudin eu ipsum. Donec blandit facilisis eros,'
                      ' sed consectetur nunc ullamcorper et. Vestibulum feugiat pulvinar tortor, ve'
                      'l laoreet eros finibus non. Suspendisse facilisis vehicula tempus. '
                      'In sed placerat risus. Mauris bibendum massa in interdum sollicitudin.'
                      ' Mauris dignissim eleifend dapibus.')
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
