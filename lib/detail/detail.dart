import 'package:flutter/material.dart';
import 'package:task_manager/detail/calendar.dart';
import 'package:task_manager/task/task.dart';


class DetailPage extends StatelessWidget {
  final Task task;

  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff581d22),
        body: CustomScrollView(slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff581d22),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CalendarPage(),
                ],
              ),
            ),
          )
        ]));
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Color(0xff581d22),
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 18,
      ),
      actions: [
        Icon(Icons.more_vert, size: 28),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${task.title} tasks',
              style: TextStyle(
                fontFamily: "Satisfy",
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            Text(
              'Yapman gereken ${task.left} yeni işin var !',
              style: TextStyle(
                fontFamily: "Satisfy",
                fontSize: 9,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
