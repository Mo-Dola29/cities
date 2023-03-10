// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:cities/loginScreen.php.dart';
import 'package:cities/townScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var list_item = [
    {"name": "Alexandria", "pic": "1.jpg"},
    {"name": "Aswan", "pic": "2.jpg"},
    {"name": "Giza", "pic": "3.jpg"},
    {"name": "Louxor", "pic": "4.jpg"},
    {"name": "Cairo", "pic": "5.jpg"},
    {"name": "El Fayoum", "pic": "6.jpg"},
    {"name": "Sinai", "pic": "7.jpg"},
    {"name": "Siwa", "pic": "8.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(255, 167, 38, 1.0)),
              child: Text(
                'Take A Tour',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
        CustomListTile(),
        LtTile(),
          ],

        ),

      ),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Cities"),
      ),
      body: GridView.builder(
        itemCount: list_item.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    splashColor: Colors.orange[400],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TownsScreen(list_item[index]['name'])));
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "assets/images/${list_item[index]['pic']}",
                              width:180,
                              height: 180,
                              fit: BoxFit.cover,
                            )),
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(0, 0, 0, .3),
                          ),
                          child: Center(
                              child: Text(
                            "${list_item[index]['name']}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child: InkWell(
            splashColor: Colors.orange[400],
            onTap: () => {Navigator.of(context).pushNamed('cities')},
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              height: 40,
              child: Row(
                children: const <Widget>[
                  Icon(Icons.place),
                  Text(
                    'Cities',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )));
  }
}

class LtTile extends StatelessWidget {
  const LtTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child: InkWell(
            splashColor: Colors.orange[400],
            onTap: () => { Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) =>
            LoginScreen()))},
            child: SizedBox(
              height: 40,
              child: Row(
                children: const <Widget>[
                  Icon(Icons.lock),
                  Text(
                    'log out',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )));
  }
}
