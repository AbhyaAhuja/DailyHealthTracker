import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCard extends StatelessWidget {
  final dynamic icon;
  final dynamic colorCard;
  final dynamic title;
  final dynamic route;
  const DashboardCard({
    super.key,
    required this.icon,
    required this.colorCard,
    required this.title,
    required this.route
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Get.toNamed(route);},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8 * 0.26,
        width: MediaQuery.of(context).size.width * 0.9 * 0.34,
        child: Card(elevation: 6, color: colorCard, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon, size: 50, color: Colors.white,), Text(title, style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white)),)],),),
      ),
    );
  }
}
