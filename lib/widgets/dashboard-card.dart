import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final dynamic icon;
  final dynamic colorCard;
  final dynamic title;
  const DashboardCard({
    super.key,
    required this.icon,
    required this.colorCard,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8 * 0.26,
      width: MediaQuery.of(context).size.width * 0.9 * 0.34,
      child: Card(elevation: 6, color: colorCard, child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, size: 50,), Text(title)],),),
    );
  }
}
