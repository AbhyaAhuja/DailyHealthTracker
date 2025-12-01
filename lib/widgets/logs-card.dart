import 'package:flutter/material.dart';

class LogsCard extends StatelessWidget {
  final dynamic title;

  final dynamic status;

  const LogsCard({super.key, required this.title, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.25,
      padding: EdgeInsets.all(20),
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xFFB46343),
                ),
                height: MediaQuery.of(context).size.height * 0.25 * 0.6,
                width: MediaQuery.of(context).size.height * 0.25 * 0.6,
                child: Icon(Icons.filter_vintage,size:40,color: Colors.amber[100],),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, overflow:TextOverflow.ellipsis, maxLines: 3, softWrap: true,),
                    Text(
                      status ? 'Completed' : 'To be done',
                      style: TextStyle(color: status ? Colors.green : Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
