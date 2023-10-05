import 'package:flutter/material.dart';
import 'package:triumph_ministry/constant/sizeconfig.dart';
import 'package:triumph_ministry/views/widget/reusable_widgets/app_text_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const Text(
          'Profile',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: height(context)*0.05,
                backgroundImage: AssetImage('assets/images/bible.png'),
              ),
              SizedBox(
                height: height(context)*0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Full Name'),
                 SizedBox(
                  height: height(context)*0.06,
                   child: TextFormField(
                    decoration: InputDecoration(
                              hintText: 'fullname',
                              filled: true,
                              fillColor: Color.fromARGB(255, 245, 241, 241)
                                  .withOpacity(0.4),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 223, 219, 219))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 206, 202, 202))),
                            ),
                   ),
                 ),
                 SizedBox(
                height: height(context)*0.03,
              ),
              Text('Email'),
                 SizedBox(
                  height: height(context)*0.06,
                   child: TextFormField(
                    decoration: InputDecoration(
                              hintText: 'xyz@abc.com',
                              filled: true,
                              fillColor: Color.fromARGB(255, 245, 241, 241)
                                  .withOpacity(0.4),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 223, 219, 219))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 206, 202, 202))),
                            ),
                   ),
                 ),
                 SizedBox(
                height: height(context)*0.03,
              ),
              Text('Contact'),
                 SizedBox(
                  height: height(context)*0.06,
                   child: TextFormField(
                    decoration: InputDecoration(
                              hintText: 'contact',
                              filled: true,
                              fillColor: Color.fromARGB(255, 245, 241, 241)
                                  .withOpacity(0.4),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 223, 219, 219))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 206, 202, 202))),
                            ),
                   ),
                 ),
                 SizedBox(
                height: height(context)*0.03,
              ),
              Text('Gender'),
                 SizedBox(
                  height: height(context)*0.06,
                   child: TextFormField(
                    decoration: InputDecoration(
                              hintText: 'gender',
                              filled: true,
                              fillColor: Color.fromARGB(255, 245, 241, 241)
                                  .withOpacity(0.4),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 223, 219, 219))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 206, 202, 202))),
                            ),
                   ),
                 ),
                 SizedBox(
                height: height(context)*0.03,
              ),
              Text('Birth date'),
                 SizedBox(
                  height: height(context)*0.06,
                   child: TextFormField(
                    decoration: InputDecoration(
                              hintText: '00/00/0000',
                              filled: true,
                              fillColor: Color.fromARGB(255, 245, 241, 241)
                                  .withOpacity(0.4),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 223, 219, 219))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 206, 202, 202))),
                            ),
                   ),
                 ),
                 SizedBox(
                height: height(context)*0.03,
              ),
              Text('Password'),
                 SizedBox(
                  height: height(context)*0.06,
                   child: TextFormField(
                    decoration: InputDecoration(
                              hintText: 'password',
                              filled: true,
                              suffixIcon: Icon(Icons.remove_red_eye),
                              fillColor: Color.fromARGB(255, 245, 241, 241)
                                  .withOpacity(0.4),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 223, 219, 219))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 206, 202, 202))),
                            ),
                   ),
                 ),
                 SizedBox(
                height: height(context)*0.03,
              ),
              SizedBox(
                height: height(context)*0.07,
                width: width(context)*0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.output)),
                  ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )
                    )
                  ),
                    onPressed: (){}, 
                    child: Text('Save'))
                ],),
              )
                ],
              ),
              
            ]),
        ),
      ),
    );
  }
}