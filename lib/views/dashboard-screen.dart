import 'package:daily_healthtracker_coderower/controllers/signin-controller.dart';
import 'package:daily_healthtracker_coderower/widgets/dashboard-card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SigninController());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 224, 170),

      body: Stack(
        children: [
          Stack(
            children: [
              Container(color: Colors.brown),
              ElevatedButton(
                onPressed: () {
                  controller.signout();
                },
                child: Text('signout'),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.2,
            ),
            padding: EdgeInsets.only(top: 110),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 224, 170),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
            ),
            child: Column(
              children: [
                Obx(() {
                  final account = controller.user.value;
                  return Text(
                    account == null
                        ? 'Welcome, Guest!'
                        : 'Welcome, ${account.displayName}!',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }),
                Text(
                  'Let\'s track you daily activities today',
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.8 * 0.2,
                  child: Card(
                    elevation: 10,
                    color: Color.fromARGB(255, 255, 244, 221),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text('Quote of the day'),
                          SizedBox(height: 10),
                          Text('okay will think'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                Container(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        
                        
                       DashboardCard(icon: Icons.notes, colorCard: Color(0xFFB46343), title: "Logs"),
                       DashboardCard(icon: Icons.bar_chart, colorCard:  Color(0xFFE16428), title: "Tracker Graph"),
                       DashboardCard(icon: Icons.timer, colorCard:Color(0xFFF8B52F), title: "Timer"),
                       DashboardCard(icon: Icons.account_circle, colorCard: Color(0xFFFBD934), title: "Profile"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
