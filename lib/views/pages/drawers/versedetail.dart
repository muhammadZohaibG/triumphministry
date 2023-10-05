import 'package:flutter/material.dart';
import 'package:triumph_ministry/constant/sizeconfig.dart';

class VerseDetailPage extends StatefulWidget {
  const VerseDetailPage({super.key});

  @override
  State<VerseDetailPage> createState() => _VerseDetailPageState();
}

class _VerseDetailPageState extends State<VerseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'Chapter 1.1',
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
        child: ColoredBox(
          color: Colors.white,
          child: SizedBox(
            width: width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Image.asset('assets/images/crist.png',width: width(context)*0.8,height: height(context)*0.4,),
              SizedBox(
                width: width(context)*0.9,
                height: height(context),
                child: Text("""1Vorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.
              Curabitur tempor quis eros tempus lacinia. Nam bibendum pellentesque quam a convallis. Sed ut vulputate nisi. Integer in felis sed leo vestibulum venenatis. Suspendisse quis arcu sem. Aenean feugiat ex eu vestibulum vestibulum. Morbi a eleifend magna. Nam metus lacus, porttitor eu mauris a, blandit ultrices nibh. Mauris sit amet magna non ligula vestibulum eleifend. Nulla varius volutpat turpis sed lacinia. Nam eget mi in purus lobortis eleifend. Sed nec ante dictum sem condimentum ullamcorper quis venenatis nisi. Proin vitae facilisis nisi, ac posuere leo.

               Vestibulum dictum ultrices elit a luctus. Sed in ante ut leo i feugiat aliquam ligula, et vestibulum ligula hendrerit vitae. Sed ex lorem, pulvinar sed auctor sit amet, molestie a nibh. Ut euismod nisl arcu, sed placerat nulla volutpat aliquet. Ut id convallis nisl. Ut mauris leo, lacinia sed elit id, sagittis rhoncus odio. Pellentesque sapien libero, lobortis a placerat et, malesuada sit amet dui. Nam sem sapien, congue eu rutrum nec, pellentesque eget ligula.
"""),
              )
            ],),
          ),
        ),
      ),
    );
  }
}