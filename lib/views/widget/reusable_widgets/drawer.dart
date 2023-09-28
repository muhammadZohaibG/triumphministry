import 'package:flutter/material.dart';

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
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(200, 50),
                bottomRight: Radius.elliptical(50, 50)
              ),

            ),
              color:  Color(0xFFD93F21),),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close,color: Colors.white,size: 30,)),
                  SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(backgroundImage: AssetImage("assets/images/breakfast.png")
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
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child: Image.asset("assets/images/home.png",fit: BoxFit.fill),
            ),
            title: Text('Home',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child: Image.asset("assets/images/order_svgrepo.com.png",fit: BoxFit.fill),
            ),
            title: Text('Current Order',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {

              // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child: Image.asset("assets/images/history_svgrepo.com.png",fit: BoxFit.fill),
            ),
            title: Text('History',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child: Image.asset("assets/images/profile.png",fit: BoxFit.fill),
            ),
            title: Text('Profile',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child: Image.asset("assets/images/privacy_policy.png",fit: BoxFit.fill),
            ),
            title: Text('Privacy Policy',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child:Image.asset("assets/images/terms_and_condition.png",fit: BoxFit.fill),
            ),
            title: Text('Terms and Condition',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child: Image.asset("assets/images/contect_us.png",fit: BoxFit.fill),
            ),
            title: Text('Contact Us',style: TextStyle(
              color: Color(0xFF4A4A4A),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),),
            onTap: () {
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Color(0xFFD93F21),
              child: Image.asset("assets/images/about_us.png",fit: BoxFit.fill),
            ),
            title: Text('About Us',style: TextStyle(
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
