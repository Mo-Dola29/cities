// ignore_for_file: file_names, use_key_in_widget_constructors

//import 'package:cities/alex.dart';
import 'package:flutter/material.dart';

class TownsScreen extends StatelessWidget {
  var name;
  TownsScreen(this.name);


  var data = {
    "Alexandria" :[
      {"name": "Qaytbay  Citadel", "pic": "a1.jpeg"},
      {"name": "El Montazah Palace", "pic": "a2.jpeg"},
      {"name": "Bibliotheca Alexandrina", "pic": "a3.jpeg"},
      {"name": "Catacombs of Kom El Shoqafa", "pic": "a4.jpg"},
      {"name": "Palais d'Antoniadis", "pic": "a5.jpeg"},
      {"name": "Alexandria National Museum", "pic": "a6.jpeg"},
      {"name": "Graeco-Roman Museum", "pic": "a7.jpeg"},
      {"name": "Roman Amphitheatre", "pic": "a8.jpeg"},
    ],
    "Aswan" : [
      {"name": "Abu Simpel Tempel", "pic": "as1.jpg"},
      {"name": "Temple of Philae", "pic": "as2.jpg"},
      {"name": " Nubian Museum", "pic": "as3.jpg"},
      {"name": "Kom ombo Temple", "pic": "as4.jpg"},
      {"name": "Elephantine Island", "pic": "as5.jpg"},
      {"name": "Temple of Khnum", "pic": "as6.jpg"},
      {"name": "Unfinished obelisk", "pic": "as7.jpg"},
      {"name": "High Dam", "pic": "as8.jpg"},

    ],
    "Giza":[
      {"name": "Pyramids of Giza", "pic": "Pyramids.jpg"},
      {"name": "Große Sphinx", "pic": "g2.jpg"},
      {"name": "Valley of Whales", "pic": "valley-of-the-whales.jpg"},
      {"name": "Mastaba of Ti", "pic": "mastaba-of-ti.jpg"},
      {"name": "Bahariya Cemetery", "pic": "bahariya-cemetery.jpg"},
      {"name": "Statue Of Ramsis||", "pic": "g3.jpg"},
      {"name": "Sakara Pyramids", "pic": "g4.jpg"},
      {"name": "The Sphinks of Memphis", "pic": "g5.jpg"},

    ],
    "Louxor":[
      {"name": "Karnak Temple", "pic": "الكرنك.jpg"},
      {"name": "Louxor Temple", "pic": "الاقصر.jpg"},
      {"name": "Mortuary Temple", "pic": "الدير البحري.jpg"},
      {"name": "Valley of the Kings", "pic": "وادي الملوك.jpg"},
      {"name": "Valley of the Queens", "pic": "وادي الملكات.jpg"},
      {"name": "Colossi of Menon", "pic": "ممنون.jpg"},
      {"name": "Louxor Museum", "pic": "متحف الاقصر.png"},
      {"name": "Madinet Habu ", "pic": "هابو.jpg"},

    ],
    "Cairo":[
      {"name": "Mohamed Ali Mosque", "pic": "محمد علي.jpg"},
      {"name": "SalahEldin Citadel", "pic": "صلاح الدين.jpg"},
      {"name": "Khan El Khalily", "pic": "خان الخليلي.jpg"},
      {"name": "El Baron Palace", "pic": "البارون.jpg"},
      {"name": "Egyptian Museum", "pic": "المتحف المصري.jpg"},
      {"name": "Tower Of Cairo", "pic": "برج.jpg"},
      {"name": "Abdin Palace", "pic": "عابدين.jpg"},
      {"name": "The Pharonic Village", "pic": "القرية.jpg"},

    ],
    "El Fayoum":[
      {"name": "Qaroun Palace", "pic": "قصر قارون.jpg"},
      {"name": "Valley of El Rayan", "pic": "وادي الريان.jpg"},
      {"name": "Valley of Whales", "pic": "وادي الحيتان.jpg"},
      {"name": "Hawara Pyramid", "pic": "هواره.jpg"},
      {"name": "Tunissia Village", "pic": "تونس.jpg"},
      {"name": "Kom Oshem Museum", "pic": "كوم اوشيم.jpg"},
      {"name": "Caranis City", "pic": "كرانيس.jpg"},
      {"name": "El Fayoum waterwheels", "pic": "السواقي.jpg"},

    ],
    "Sinai":[
      {"name": "Zistel Ghorm", "pic": "زيستل.jpeg"},
      {"name": "Hat Hor Temple ", "pic": "حتحور.jpg"},
      {"name": "Blue Hole", "pic": "الثقب.jpg"},
      {"name": "El Gondy Citadel", "pic": "الجندي.jpg"},
      {"name": "El Pharma Hill", "pic": "الفرما.jpg"},
      {"name": "Mousa Mountain", "pic": "موسي.jpeg"},
      {"name": "St. Catherine's Monastery", "pic": "دير.jpg"},
      {"name": "Sarabit El Khadim", "pic": "سرابيط االخادم.jpg"},

    ],
    "Siwa":[
      {"name": "Amun Temple", "pic": "متحف امون.jpg"},
      {"name": "Great Sand Sea", "pic": "رمال.jpg"},
      {"name": "Temple Umm Ubayd", "pic": "ام عبيدة.jpg"},
      {"name": "Shali Fortress", "pic": "شالي.jpg"},
      {"name": "Mountain Of The Dead", "pic": "جبل الموتي.jpg"},
      {"name": "Greaco-Roman Tombs", "pic": "الرومان.jpg"},
      {"name": "Museum Of Siwan traditions", "pic": "متحف سيوة.jpg"},
      {"name": "Lake of Siwa", "pic": "بحيرة.jpg"},

    ],




  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(name),
      ),
      body: GridView.builder(
        itemCount: data[name]!.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    splashColor: Colors.orange[400],
                    onTap: () => {},
                    child: Stack(
                      alignment: Alignment.bottomCenter

                      ,children: [
                        Container(



                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset("assets/images/${data[name]![index]['pic']}",width: 180, height: 180, fit: BoxFit.cover,)),
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                          child: Center(child:
                          Text("${data[name]![index]['name']}",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
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
