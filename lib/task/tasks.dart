import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/detail/calendar.dart';
import 'package:task_manager/task/task.dart';


class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(      //dörtlü yerleşimin aralıklarını belirliyor.
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => tasksList[index].isLast!
              ? _buildAddTask()
              : _buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      //noktalı kenarlık
      borderType: BorderType.RRect,
      radius: Radius.circular(20),
      dashPattern: [10, 10], //kesikli kenarlık ayarı
      color: Color(0xff581d22),
      strokeWidth: 2, //çizgi kalınlığı
      child: Center(
          child: Text(
            "+ Add",
            style: TextStyle(
              fontFamily: "Satisfy",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return GestureDetector(
      onTap: (){
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(task)));
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CalendarPage()));

      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: task.bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              task.iconData,
              color: task.iconColor,
              size: 30,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              task.title!,
              style: TextStyle(
                  fontFamily: "Satisfy",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                //    _buildTaskStatus(task.btnColor!, task.iconColor!,
                //        '${task.left} left'),
                _buildTaskStatus(task.btnColor!, Colors.white,
                    '${task.left} left'), //kalan işlerin butonu
                SizedBox(width: 15), //butonlar arasındaki mesafe
                _buildTaskStatus(Colors.white, task.iconColor!,
                    '${task.done} done'), //yapılmış işlerin butonu
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
    return Container(
      //butonların genişlik ve uzunluk ayarlaması
      padding: EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 10), //horitonzal : uzunluk,  vertical : genişlik
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: txColor,
        ),
      ),
    );
  }
}
