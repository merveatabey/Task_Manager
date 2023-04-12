import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Notes',
                style: TextStyle(
                  fontFamily: "Satisfy",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff581d22),
                ),
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: _buildbottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //add butonunu navigation barın ortasına alıyoruz
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        backgroundColor: Color(0xff581d22),
        onPressed: () {},
        child: Icon(
          Icons.add, //bu sayfada yeni not oluşturmak için kullanılacak
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
          backgroundColor: Color(0xff581d22),
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
      backgroundColor: Color(0xff581d22),
      title: Text(
        'Take Notes',
        style: TextStyle(
            fontFamily: "Raleway",
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white),
      ),
      actions: [
        Row(
          children: [
            IconButton(
                tooltip: 'Delete',
                padding: EdgeInsets.only(right: 20),
                onPressed: () {},
                icon: Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                )),
            IconButton(
                tooltip: 'Save',
                padding: EdgeInsets.only(right: 10),
                onPressed: () {},
                icon: Icon(
                  Icons.save,
                  color: Colors.white,
                )),
          ],
        ),
      ],
    );
  }
}
