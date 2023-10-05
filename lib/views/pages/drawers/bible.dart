import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:triumph_ministry/views/pages/drawers/bibledetail.dart';
import 'package:triumph_ministry/views/pages/events/event_details.dart';

import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/app_text_field.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';
import '../mission/our_mission_details.dart';

class BiblePage extends StatefulWidget {
  const BiblePage({Key? key}) : super(key: key);

  @override
  State<BiblePage> createState() => _BiblePageState();
}

class _BiblePageState extends State<BiblePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'Bible',
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
                suffixIconButton: Padding(
                  padding: EdgeInsets.only(right:width(context)*0.04),
                  child: const Icon(Icons.format_list_bulleted_rounded,color: Colors.black,),
                ),
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
              Row(
                children: [
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Bible'),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Change this to your desired number of columns
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return  Padding(
                      padding: const EdgeInsets.only(bottom:5.0),
                      child: Column(
                          children: [
                            Container(
                              width: width(context) * 0.4,
                              height: height(context) * 0.16,
                              child: Center(child: Image(image: AssetImage(bibleG))),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> BibledetailPage()));
                              },
                              child: Container(
                                width: width(context) * 0.4,
                                height: height(context)*0.05,
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
                                  padding: EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: width(context)*0.2,
                                            // color: Colors.pink,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'God of Peace',overflow: TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                                                ),
                                                Text(
                                                  'chapter 3',overflow: TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 150, 149, 149)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
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
