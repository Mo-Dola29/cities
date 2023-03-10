import 'package:flutter/material.dart';

class Alex extends StatefulWidget {
  var name;
  var pic;
  var info;

  Alex(this.name,this.pic,this.info);

  @override
  State<Alex> createState() => _AlexState();
}

class _AlexState extends State<Alex> {
  var data_alex = {
    "Alexandria": [
      {
        "name": "Qaytbay  Citadel",
        "pic": "a1.jpeg",
        "data":
            ''' Qaitbay Castle is located at the end of Pharos Island in the far west of Alexandria. It was built in the place of the ancient Lighthouse of Alexandria, which was destroyed in 702 AH following the devastating earthquake that occurred during the reign of Sultan al-Nasir Muhammad ibn Qalawun. It was built in the year 884 AH. Wikipedia
Address: Al-Sayala Sharq, Qesm El-Gomrok, Alexandria
work hours:
Closed ⋅ Opens at 8 am on Wednesday
Opening date: 1000 BC
Custom Purpose: Fortress
      '''
      },
      {
        "name": "El Montazah Palace",
        "pic": "a2.jpeg",
        "data": ''' 
      Montazah Palace is one of the royal palaces in Egypt. Built by Khedive Abbas Helmy II in 1892 AD. in Alexandria City. The palace is located within gardens known as "The Montazah Gardens".
Address: El Mandara Bahri, Qesm 2 El Montazah, Alexandria
work hours:
   Opens at 8 am
Architectural style: Neo-Renaissance architecture
Building type: Palace'''
      },
      {
        "name": "Bibliotheca Alexandrina",
        "pic": "a3.jpeg",
        "data":
            '''The New Library of Alexandria or the General Authority of the Library of Alexandria is a revival of the ancient Library of Alexandria, the largest library of its era, in a huge project undertaken by Egypt in partnership with the United Nations, where the library was rebuilt in a location close to the old library in the Shatby area of ​​the city. The modern library was inaugurated on October 16, 2002 with an international presence.
Address: Azarita and Shatby, Qesm Bab Sharqi, Alexandria 21526
 Phone: 03 4839999
Opening date: October 16, 2002
Construction start date: 1995
Architects: Kjetil Trædal Thorsen, Craig Edward Dykers, Christoph Kappeler, Oyvind Mo
Floor area: 70,000 m²
Custom Purpose: Library
Architectural style: contemporary architecture
      '''
      },
      {
        "name": "Catacombs of Kom El Shoqafa",
        "pic": "a4.jpg",
        "data":
            '''Tombs of Kom el Shoqafa is a historical archaeological site located in Alexandria, in the Kom el Shoqafa area south of Mina El Basal neighborhood. It is considered one of the most important cemeteries of the city, and is considered one of the Seven Wonders of the Middle Ages. Wikipedia
Address: 12 off St., Ras El Tin, Alexandria
Phone: 03 3936825
Place: Alexandria
      '''
      },
      {
        "name": "Palais d'Antoniadis",
        "pic": "a5.jpeg",
        "data":
            '''The Gardens and Palace of Antoniadis are gardens that some historians date back to the Ptolemaic period in Egypt. They are the oldest gardens in the city of Alexandria in Egypt and are considered among the oldest gardens established by man in the world. They were located within the suburb of Eleusis or “Gardens of Bliss.” important to the Ptolemaic kings, and in the nineteenth century...
Address: Izbat Saed Qesm, Qism Sidi Gaber
Phone: 0127 339
Building type: Palace
      '''
      },
      {
        "name": "Alexandria National Museum",
        "pic": "a6.jpeg",
        "data":
            '''The Alexandria National Museum is one of the museums of the city of Alexandria in Egypt. The museum contains more than 1800 artifacts representing most of the eras that passed through the city, which was founded in the year 332 BC. Its address is 110 Freedom Road. And
Address: 131 Al-Shaheed Jalal Al-Desouki, Bab Sharqi and Wabour Al-Mayah, Qism Bab Sharqi, Alexandria
 Phone: 03 4835519
Founded: 2003
Official opening date: December 31, 2003
Phone number: +20-3-4835519
      '''
      },
      {
        "name": "Graeco-Roman Museum",
        "pic": "a7.jpeg",
        "data":
            '''The Greco-Roman Museum is a museum of antiquities in Alexandria, Egypt. It displays a wide variety of antiquities that were found in and around Alexandria, which are mostly antiquities from the Ptolemaic era and the Roman era later, specifically since the inception of Alexandria from the third century BC to the third century AD. Wikipedia
Address: East Obelisk, Attarin, Alexandria
Phone: 050 2080119
Founded Date: 1892
Official opening date: October 17, 1892
      '''
      },
      {
        "name": "Roman Amphitheatre",
        "pic": "a8.jpeg",
        "data":
            '''The Roman theater in Alexandria in Kom El-Dikka is one of the monuments of the Roman era. It was built at the beginning of the fourth century AD, and it is the only Roman theater in Egypt.
This building was discovered by chance while removing dirt to search for the tomb of Alexander the Great by the Polish expedition in 1960.

The building is listed in the shape of a horseshoe or the letter U and consists of 13 rows of marble terraces numbered with Greek letters and numbers to organize the seating process, the first from the bottom, and it can accommodate about 600 people

And the use of the building as a hall to listen to music (odeon), as it had the element of listening thanks to the presence of the dome and the orchestra area.
Address :- Soliman Yousry St. - Misr Station
Phone :- 033926851-033902904
      '''
      },
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(widget.name),
      ),
      body: Container(

      ) );
  }
}
