import 'package:flutter/material.dart';
import 'package:triumph_ministry/constant/sizeconfig.dart';
import 'package:triumph_ministry/views/pages/drawers/bible.dart';
import 'package:triumph_ministry/views/pages/drawers/contactus.dart';
import 'package:triumph_ministry/views/pages/drawers/donation_details.dart';
import 'package:triumph_ministry/views/pages/drawers/sermons_detail.dart';
import 'package:triumph_ministry/views/pages/drawers/socialmedia.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(

            height: 200,
            decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(100, 50),
                bottomRight: Radius.elliptical(200, 150)
              ),

            ),
              color:  Color(0xFFFFCC00),),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.close,color: Colors.white,size: 30,)),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/profile.png"),
                          child: ClipOval(
                            child: Image(image: AssetImage("assets/images/profile.png"),
                            fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Mr. Abdul',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.98,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/home.png",fit: BoxFit.fill),
            ),
            title: const Text('Home',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/donations.png",fit: BoxFit.fill),
            ),
            title: const Text('Donations',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Donation()));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/biblelogo.png",fit: BoxFit.fill),
            ),
            title: const Text('Bible',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const BiblePage()));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/sermons.png",fit: BoxFit.fill),
            ),
            title: const Text('Sermons',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Sermon_details()));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/history_svgrepo.com.png",fit: BoxFit.fill),
            ),
            title: const Text('Saved',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/social_media.png",fit: BoxFit.fill),
            ),
            title: const Text('Social Media',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SocialmediaPage()));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/privacy_policy.png",fit: BoxFit.fill),
            ),
            title: const Text('Privacy Policy',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child:Image.asset("assets/images/terms_and_condition.png",fit: BoxFit.fill),
            ),
            title: const Text('Terms and Condition',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/contect_us.png",fit: BoxFit.fill),
            ),
            title: const Text('Contact Us',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactusPage()));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color(0xFFD93F21),
              child: Image.asset("assets/images/about_us.png",fit: BoxFit.fill),
            ),
            title: const Text('About Us',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),

        ],
      ),
    );
  }
}
