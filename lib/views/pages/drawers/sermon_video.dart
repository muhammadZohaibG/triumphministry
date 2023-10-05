import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:triumph_ministry/views/pages/events/event_details.dart';
import 'package:triumph_ministry/views/pages/home/component/home_tab.dart';
import 'package:triumph_ministry/views/pages/home/component/tab_provider.dart';
import 'package:video_player/video_player.dart';

import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/app_text_field.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';
import '../mission/our_mission_details.dart';

class SermonVideo extends StatefulWidget {
  final String videoUrl;
  const SermonVideo({Key? key,required this.videoUrl}) : super(key: key);

  @override
  State<SermonVideo> createState() => _SermonVideoState();
}

class _SermonVideoState extends State<SermonVideo> {


  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
      autoPlay: true,
      looping: true,
      showControls: false,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SafeArea(
        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 1),
          child: Column(
            children: [
              Container(
                color: Colors.red,
                width: SizeConfig.widthMultiplier*100,
                height: SizeConfig.heightMultiplier*30,
                child: Stack(
                  children: [

                    Image.asset('assets/images/Sermonimage.png',width: SizeConfig.widthMultiplier*100,
                        height: SizeConfig.heightMultiplier*30,fit:BoxFit.fill ,),
                    Chewie(
                      controller: _chewieController,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: IconButton(
                        icon: Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Positioned(
                      // top: null,
                      // left: null,
                      // Use center property to center the widget
                      top: 50,
                      bottom: 50, // Adjust the distance from the bottom as needed
                      left: 50,
                      right: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.skip_previous, color: Colors.white,size: 30,),
                            onPressed: () {
                              // Handle play previous logic
                            },
                          ),
                          Container(
                            width: SizeConfig.widthMultiplier*16,
                            height: SizeConfig.heightMultiplier*8,
                           // color: Colors.white60,
                            decoration: ShapeDecoration(
                              color: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),),
                            child: IconButton(
                              icon: Icon(_videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white,size: 30),
                              onPressed: () {
                                setState(() {
                                  _videoPlayerController.value.isPlaying
                                      ? _videoPlayerController.pause()
                                      : _videoPlayerController.play();
                                });
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.skip_next, color: Colors.white,size: 30),
                            onPressed: () {
                              // Handle play next logic
                            },
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        icon: Icon(Icons.fullscreen, color: Colors.white),
                        onPressed: () {
                          // Handle full-screen logic
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => FullScreenVideoPlayer(), // Replace FullScreenVideoPlayer with your actual full-screen video player widget
                          //   ),
                        //  );
                        },
                      ),
                    ),


                  ],
                ),

              ),

              SizedBox(height: SizeConfig.heightMultiplier*2,),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
Text(
            'Sorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 1.2,
              letterSpacing: -0.17,
            ),
          ),
                       SizedBox(height: SizeConfig.heightMultiplier*4,),
                           Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text(
                    'Recommended ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                      letterSpacing: -0.17,
                    ),
                  ),
                           ], ),
                SizedBox(height: SizeConfig.heightMultiplier*3,),
              
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
              )
          
                
                    ],
                  ),
                ),
              ),
         

            ],
          ),
        ),
      ),

    );
  }

}