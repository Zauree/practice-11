import 'package:bus_fleets/screens/menu-page.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        title: Text('Расписание'),
        backgroundColor: Color.fromRGBO(117, 179, 101, 1),
      ),
      drawer: MenuPage(),
      body: ListView.builder(
        itemBuilder: (context, i){
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                            child: Column(
                              children:<Widget>[
                                Container(
                                  width: 150,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/bus.png')),
                                  ),
                                ),
                                SizedBox( height: 10,),
                                Text("YUTONG",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text("KZ 888\nKN 02",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(" 32 мест",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),

                    Column(
                      children:<Widget> [
                        Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              Text("Асыката - \nАлматы",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox( height: 10,),
                              Text("Отправление",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(94, 94, 94, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox( height: 5,),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Дата - 06.02.2020 Thu",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox( height: 8,),
                                    Text("Время - 18:39",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ]),
                              SizedBox( height: 10,),
                              Text('Прибытие',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(94, 94, 94, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox( height: 5,),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Дата - 07.02.2020 Thu",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox( height: 8,),
                                    Text("Время - 06:10",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(7.0),
                        child: SizedBox(
                          width: 310,
                          child:  OutlineButton(
                            borderSide:
                            BorderSide(width: 1.0, color:  Color.fromRGBO(117, 179, 101, 1)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text('Удалить рейс'),
                            onPressed: () {},
                            ),
                          ),
                      ),
                        ]
                ),
              ],
            ),
          );
        },
      ),

      floatingActionButton: Container(
        width: 310,
        child: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Добавить рейс'),
        backgroundColor: Color.fromRGBO(117, 179, 101, 1),
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
