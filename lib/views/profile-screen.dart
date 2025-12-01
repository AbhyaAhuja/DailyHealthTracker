import 'package:daily_healthtracker_coderower/controllers/signin-controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SigninController());

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                color: Color(0xFFB46343),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                color: Color(0xFFE16428),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                color: Color(0xFFF8B52F),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                color: Color(0xFFFBD934),
              ),
            ],
          ),
          Obx(() {
            final user = controller.user.value;

            return Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Center(
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.5 * 0.35,

                    backgroundImage: user != null
                        ? NetworkImage(user.photoURL!)
                        : AssetImage('assets/yoga.png') as ImageProvider,
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.1),

                Text(user == null ? "Guest, sign in" : user.displayName!, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                
                Text(user == null ? "email, sign in" : user.email!, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16, color:Colors.white))),

                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      await controller.signout();
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Sign out',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 62, 37, 0),
                      minimumSize: Size(100, 50),
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
