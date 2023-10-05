import 'package:flutter/material.dart';
import 'package:triumph_ministry/constant/sizeconfig.dart';

class ContactusPage extends StatefulWidget {
  const ContactusPage({super.key});

  @override
  State<ContactusPage> createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'Contact us',
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
      body: Container(
        width: width(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top:height(context)*0.02),
              child: SizedBox(
                width: width(context)*0.5,
                height: height(context)*0.08,
                child: Text('You can reach out to us',style: TextStyle(fontSize: height(context)*0.02, fontWeight: FontWeight.bold),)
              ),
            ),
            Icon(Icons.phone),
            SizedBox(height: height(context)*0.02,),
            SizedBox(
              width: width(context)*0.37,
              height: height(context)*0.08,
              child: Text('(800) 123-456-7890 \n(800) 999-888-7766',style: TextStyle(fontWeight: FontWeight.bold),)
            ),
            SizedBox(height: height(context)*0.05,),
            Icon(Icons.mail),

            SizedBox(height: height(context)*0.02,),
            SizedBox(
              width: width(context)*0.55,
              height: height(context)*0.08,
              child: Text('triumphministryfm@gmail.com',style: TextStyle(fontWeight: FontWeight.bold),)
            ),
            
          ],
        ),
      ),
    );
  }
}