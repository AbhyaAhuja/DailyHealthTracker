import 'package:daily_healthtracker_coderower/controllers/signin-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            return CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                user!.photoURL != null ? user.photoURL! : 'assets/yoga.png',
              ),
            );
          }),
        ],
      ),
    );
  }
}
