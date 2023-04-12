import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_manager/detail/notePage.dart';


class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {

  DateTime today = DateTime.now();


  void _onDaySelected(DateTime day, DateTime focusDay){
    setState(() {
      today = day;
      //Navigator.push(context, MaterialPageRoute(builder: (context) => NotePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:AppBar(
        backgroundColor: Color(0xff581d22),
        toolbarHeight: 60,
        title: Text(
          today.toString().split(" ")[0],
          style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 18,
        ),
        actions: [
          Icon(Icons.more_vert, size: 25),
        ],
      ),
      body: content(),
      bottomNavigationBar: _buildbottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //add butonunu navigation barın ortasına alıyoruz
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        backgroundColor:Color(0xff581d22),
        onPressed: () {},                     //home page'e yeni task eklesin
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
  Widget content(){
    return Column(
      children: [
        Container(
          child: TableCalendar(
            locale: 'en_US',
            headerStyle: HeaderStyle(
              formatButtonVisible: false, titleCentered: true,),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            rowHeight: 43,
            focusedDay: today,
            firstDay: DateTime.utc(2023,1,1),
            lastDay: DateTime.utc(2030,12,31),
            onDaySelected: _onDaySelected,
          ),
        ),
        SizedBox(height: 50,),
        FilledButton(
          onPressed: (){
            setState(() {
              today = Navigator.push(context, MaterialPageRoute(builder: (context) => NotePage())) as DateTime ;

            });
          },
          child:
          const Text(
            'Note page  ->',
            style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.indigo),
            fixedSize: MaterialStatePropertyAll(Size(145,45)),

          ),

        ),

      ],
    );
  }

  Widget _buildbottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white70.withOpacity(0.2),
              spreadRadius: 5, //yayılma yarıçapı
              blurRadius: 10, //bulanıklık yarıçapı
            ),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor:Color(0xff581d22),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: 'Person',
                icon: Icon(
                  Icons.person_rounded,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }

}
