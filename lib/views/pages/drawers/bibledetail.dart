import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:triumph_ministry/views/pages/drawers/bibleverses.dart';
import 'package:triumph_ministry/views/widget/reusable_widgets/app_text_field.dart';

import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';
import '../../widget/reusable_widgets/back_arrow.dart';
import '../../widget/reusable_widgets/reuseable_container.dart';

class BibledetailPage extends StatefulWidget {
  const BibledetailPage({Key? key}) : super(key: key);

  @override
  State<BibledetailPage> createState() => _BibledetailPageState();
}

class _BibledetailPageState extends State<BibledetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'God of Peace',
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height(context)*0.85,
              width: width(context),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height(context)*0.02,
                  ),
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
                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Text('Chapters'
                                , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)
                                ,overflow: TextOverflow.ellipsis,),
                        ),
                      ],
                    ),
                    Container(
                      width: width(context)*0.9,
                      height: height(context)*0.65,
                      color: Color.fromARGB(255, 241, 240, 240),
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: 8,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  width: width(context)*0.9,
                                  height: height(context)*0.09,
                                  color: Colors.white,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute<void>(
                                      builder: (BuildContext context) => const BibleversesPage(),));
                                    },
                                    child: Row(
                                      children: [
                                      Image.asset('assets/images/bible.png'),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('God Of Peace chapter 1',style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text('5 verses')
                                        ],
                                      )
                                    ],),
                                  ),
                                ),
                                Container(
                                  height: height(context)*0.02,
                                )
                              ],
                            ),
                          );            
                      }
                      ),
                    )
                ],
              ),
              ),
            ],  ),
        ),
        );
  }
}
