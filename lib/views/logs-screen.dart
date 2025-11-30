import 'package:daily_healthtracker_coderower/controllers/logs-controller.dart';
import 'package:daily_healthtracker_coderower/widgets/logs-card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logs extends StatefulWidget {
  const Logs({super.key});

  @override
  State<Logs> createState() => _LogsState();
}

class _LogsState extends State<Logs> {
  final controller = Get.find<LogsController>();

  @override
  void initState() {
    super.initState();
    controller.fetchLogs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logs'), backgroundColor: Color(0xFFFDFBD7)),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFDFBD7),
                  Color.fromARGB(255, 167, 140, 126),
                  Color.fromARGB(255, 120, 92, 88),
                  Color.fromARGB(255, 90, 62, 57),
                  Color(0xFF492B35),
                  Color.fromARGB(255, 51, 28, 35),
                ],
              ),
            ),
          ),
          Center(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.logs.length,
                itemBuilder: (context, index) {
                  final log = controller.logs[index];
                  return LogsCard(title: log.todo, status: log.completed);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
