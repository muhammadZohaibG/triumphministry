import 'package:flutter/material.dart';
import 'package:triumph_ministry/constant/sizeconfig.dart';

class SocialmediaPage extends StatefulWidget {
  const SocialmediaPage({super.key});

  @override
  State<SocialmediaPage> createState() => _SocialmediaPageState();
}

class _SocialmediaPageState extends State<SocialmediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'Social Media',
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
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: width(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top:height(context)*0.02),
              child: SizedBox(
                width: width(context)*0.85,
                height: height(context)*0.08,
                child: TextField(
                  decoration: InputDecoration(
                                hintText: 'facebook',
                                prefixIcon: CircleAvatar(backgroundColor: Color.fromARGB(255, 50, 20, 160),
                  child: Image.asset("assets/images/facebookIcon.png",fit: BoxFit.fill,color: Color.fromARGB(255, 255, 255, 255),),),
                                suffixIcon: TextButton(onPressed: (){}, child: Text('copy link',style: TextStyle(color: Colors.amber),)),
                                filled: true,
                                fillColor: Color.fromARGB(255, 240, 239, 239),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 223, 219, 219))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 206, 202, 202))),
                              ),
                ),
              ),
            ),
            SizedBox(
              width: width(context)*0.85,
              height: height(context)*0.08,
              child: TextField(
                decoration: InputDecoration(
                              hintText: 'instagram',
                              prefixIcon: CircleAvatar(backgroundImage: AssetImage("assets/images/insta.png"),),
                              suffixIcon: TextButton(onPressed: (){}, child: Text('copy link',style: TextStyle(color: Colors.amber),)),
                              filled: true,
                              fillColor: Color.fromARGB(255, 240, 239, 239),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 223, 219, 219))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 206, 202, 202))),
                            ),
              ),
            )
          ],
        ),
      ),
    );
  }
}