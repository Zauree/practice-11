import 'package:bus_fleets/screens/choose-flight.dart';
import 'package:flutter/material.dart';

class Passenger extends StatefulWidget {
  @override
  _PassengerState createState() => _PassengerState();
}


class _PassengerState extends State<Passenger> {

  var passenger = [
    {
      'name': 'Aigerim',
      'place': '0 A',
      'place2': 'верхний',
      'type': 'OFFLINE',
      'telNumber': '77079282498',
      'mail': 'Почта',
      'price': '3000',
      'colorsType': Colors.grey,
    },
    {
      'name': 'Arlan',
      'place': '0 B',
      'place2': 'верхний',
      'type': 'OFFLINE',
      'telNumber': '77073452776',
      'mail': 'Почта',
      'price': '3000',
      'colorsType': Colors.grey,

    },
    {
      'name': 'ASSEL',
      'place': '1',
      'type': 'ONLINE',
      'place2': 'нижний',
      'telNumber': '77013456644',
      'mail': 'Почта',
      'price': '2700',
      'colorsType': Color.fromRGBO(117, 179, 101, 1),

    },
    {
      'name': 'TEMIRLAN',
      'place': '1',
      'place2': 'нижний',
      'type': 'ONLINE',
      'telNumber': '77056874222',
      'mail': 'Почта',
      'price': '2500',
      'colorsType': Color.fromRGBO(117, 179, 101, 1),

    },
    {
      'name': 'Свободные места',
      'place': '',
      'place2': '',
      'type': '',
      'telNumber': ' ',
      'mail': ' ',
      'price': ' ',

    },
    {
      'name': 'Нет имени',
      'place': '0 A',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'mail': ' ',
      'price': ' ',
      'colorsType': Color.fromRGBO(117, 179, 101, 1),

    },
    {
      'name': 'Нет имени',
      'place': '0 B',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'mail': ' ',
      'price': ' ',
      'colorsType': Color.fromRGBO(117, 179, 101, 1),

    },
    {
      'name': 'Нет имени',
      'place': '2',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'mail': ' ',
      'price': ' ',
      'colorsType': Color.fromRGBO(117, 179, 101, 1),

    },
    {
      'name': 'Нет имени',
      'place': '2',
      'place2': 'нижний',
      'type': 'no type',
      'telNumber': ' ',
      'mail': ' ',
      'price': ' ',
      'colorsType': Color.fromRGBO(117, 179, 101, 1),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Пассажиры',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChooseFlight(),
                )
            );
          },
        ),
        backgroundColor: Color.fromRGBO(117, 179, 101, 1),
      ),
      body: ListView.builder(
        itemCount: passenger.length,
        itemBuilder: (context, i) {
          return i == 0 ? _titleText1() : _listPassangers(i - 1);
        },
      ),
    );
  }

  _titleText1() {
    return Container(
      padding: EdgeInsets.only(left: 30.0, top: 10.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Имя',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  'Место',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                      fontWeight: FontWeight.w600

                  ),
                ),
                Text(
                  'Тип',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                      fontWeight: FontWeight.w600

                  ),
                ),
                SizedBox(
                  height: 3,
                )
              ],
            ),),
          )
        ],
      ),
    );
  }

  _listPassangers(i) {
    return GestureDetector(
      onTap: () {

      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 10.0, right: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  passenger[i]['name'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                      fontWeight: FontWeight.w600

                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          passenger[i]['place'].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                              fontWeight: FontWeight.w600

                          ),
                        ),
                        Text(
                          passenger[i]['place2'].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                              fontWeight: FontWeight.w600

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 85,
                  height: 35,
                  child: Center(
                    child: Text(
                      passenger[i]['type'].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: passenger[i]['colorsType'],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}



