import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigatorBawah(),
      body: Stack(
        children: [
          Image.asset('assets/background.jpg'),
          InformasiPengguna(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                margin: EdgeInsets.zero,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),

                      LabelBerita(),
                      ListBerita(),

                      SizedBox(height: 40,),

                      Wrap(
                        children: [
                          TombolMenu(
                            image: Image.asset('assets/icon1.png',
                            width: 60,)
                          ),
                          TombolMenu(
                            image: Image.asset('assets/icon2.png',
                            width: 60,)
                          ),
                          TombolMenu(
                            image: Image.asset('assets/icon3.png',
                            width: 60,)
                          ),

                        ],
                      )
                    ],
                  ),
                )
              ),
            )
          )
        ],
      )
    );
  }
}

class TombolMenu extends StatelessWidget {
  final Image? image;
  const TombolMenu({
    Key? key,
    this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: image ?? SizedBox()
        ),
    );
  }
}

class ListBerita extends StatelessWidget {
  const ListBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/berita.jpg', height: 120,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/berita2.jpg', height: 120,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/berita3.jpg', height: 120,),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelBerita extends StatelessWidget {
  const LabelBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text('Berita')),
    );
  }
}

class NavigatorBawah extends StatelessWidget {
  const NavigatorBawah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.house),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.newspaper),
          label: 'Berita'
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.gear),
          label: 'Pengaturan'
          )
      ], 
      );
  }
}

class InformasiPengguna extends StatelessWidget {
  const InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/foto.jpg', 
            width: 60,),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, Rizky',
                style: TextStyle(fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Text('rizkyabrar997@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
            ],
          ),
          ),
          Image.asset('assets/bell.png', width: 40,)
        ],
      ),
    );
  }
}