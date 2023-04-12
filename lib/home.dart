import 'package:flutter/material.dart';
import 'package:task_manager/task/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:
      _appBar(), //_appBar adında bir method oluşturup gerekli kodları oraya yazdık
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Tasks",
              style: TextStyle(
                fontFamily: "Satisfy",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff581d22),
              ),
            ),
          ),
          Expanded(child: Tasks()),
        ],
      ),
      bottomNavigationBar: _buildbottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //add butonunu navigation barın ortasına alıyoruz
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        backgroundColor:Color(0xff581d22),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
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

  _appBar() {
    return AppBar(
      backgroundColor:Color(0xff581d22),
      elevation: 0,
      title: Row(
        children: [
          //image ve texti ekledik.
          Container(
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('images/avatar.jpg'),
            ),
          ),
          SizedBox(width: 10), //text ile image arasına boşluk bıraktık.
          const Text(
            'Hello  Merve!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Satisfy',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
          padding: EdgeInsets.only(right: 10),
        ),
      ],
    );
  }
}
