import 'package:daily_healthtracker_coderower/controllers/logs-controller.dart';
import 'package:daily_healthtracker_coderower/routes/app-routes.dart';
import 'package:daily_healthtracker_coderower/views/dashboard-screen.dart';
import 'package:daily_healthtracker_coderower/views/graph-screen.dart';
import 'package:daily_healthtracker_coderower/views/logs-screen.dart';
import 'package:daily_healthtracker_coderower/views/profile-screen.dart';
import 'package:daily_healthtracker_coderower/views/signin-screen.dart';
import 'package:daily_healthtracker_coderower/views/timer-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(LogsController());
  runApp(
    GetMaterialApp(
      initialRoute: AppRoutes.login,
      getPages: [
        GetPage(name: AppRoutes.login, page: () => SignIn()),
        GetPage(name: AppRoutes.dashboard, page: () => Dashboard()),
        GetPage(name: AppRoutes.logs, page: () => Logs()),
        GetPage(name: AppRoutes.timer, page: () => Timer()),
        GetPage(name: AppRoutes.profile, page: () => Profile()),
        GetPage(name: AppRoutes.graph, page: () => Graph()),
      ],
    ),
  );
}

//0xFFF3E8DF
// 0xFF452829

// class AppColors {
//   static const Color goldenYellow = Color(0xFFFBD934);
//   static const Color warmAmber = Color(0xFFF8B52F);
//   static const Color deepPlum = Color(0xFF492B35);
//   static const Color paleCream = Color(0xFFFDFBD7);
//   static const Color fieryOrange = Color(0xFFE16428);
//   static const Color terracotta = Color(0xFFB46343);
//   static const Color softGold = Color(0xFFFBE397);
//   static const Color sunsetOrange = Color(0xFFED8C28);
//   static const Color richMaroon = Color(0xFF833F35);
// }
