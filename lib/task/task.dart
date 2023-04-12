import 'package:flutter/material.dart';
import 'package:task_manager/task/colors.dart';
class Task{

//değişken tanımlarımızı yapıyoruz
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? btnColor;
  Color? iconColor;
  num? left;
  num? done;
  bool? isLast;

  Task({this.iconData, this.title, this.bgColor, this.btnColor, this.iconColor, this.left, this.done, this.isLast = false});

  static List<Task> generateTasks(){
    return [
      Task(
        iconData : Icons.person_rounded,
        title: 'Personal',
        bgColor: kGreenLight,
        iconColor: kGreenDark,
        btnColor: kGreenDark,
        left: 3,
        done: 1,
      ),
      Task(
        iconData : Icons.cases_rounded,
        title: 'Work',
        bgColor: kRedLight,
        iconColor: kRedDark,
        btnColor: kRedDark,
        left: 0,
        done: 0,
      ),
      Task(
        iconData : Icons.favorite_rounded,
        title: 'Health',
        bgColor: kBlueLight,
        iconColor: kBlueDark,
        btnColor: kBlueDark,
        left: 0,
        done: 0,
      ),

      Task(isLast: true)
    ];
  }


}