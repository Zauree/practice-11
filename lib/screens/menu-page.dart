import 'package:bus_fleets/screens/schedule-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
       //   padding: EdgeInsets.all(20.0),
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Container(
                   padding: EdgeInsets.only(top: 40.0),
                   child: Text('Test Company',
                       style: TextStyle(
                           fontSize: 24,
                           color: Colors.black54)),
                 ),
           ]
            ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: new UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: null),
                    accountName: new Text('Zaure Kashagan',
                      style: TextStyle(
                        color: Color.fromRGBO(90, 90, 90, 1),
                        fontSize: 29,
                        fontWeight: FontWeight.w700,
                      ),),
                    arrowColor: Colors.black, accountEmail: null,

                  ),
                ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  ListTile(
                      leading: Icon( Icons.library_books_outlined, size: 35,
                        color: Color.fromRGBO(109, 109, 109, 1),),
                      title: Text('Продажа билетов',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () { /*
                  Navigator.push(
                      context,
                      MaterialPageRoute() // builder: (context) => SecondRoute()
                  );  */
                      }
                  ),
                  ListTile(
                      leading: Icon( Icons.account_box_rounded, size: 35, color: Colors.black54,),
                      title: Text('Список администраторов',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      }
                  ),
                  ListTile(
                      leading: Icon( Icons.bus_alert, size: 35,color: Color.fromRGBO(109, 109, 109, 1),),
                      title: Text('Автобусы',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      }
                  ),
                  ListTile(
                      leading: Icon( Icons.stacked_bar_chart, size: 35, color: Color.fromRGBO(109, 109, 109, 1),),
                      title: Text('Статистика',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      }
                  ),
                  ListTile(

                      leading: Icon( Icons.airline_seat_recline_extra_sharp, size: 35, color: Color.fromRGBO(109, 109, 109, 1),),
                      title: Text('Пассажиры',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () { /*
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstRoute())
                  ); */
                      }
                  ),
                  ListTile(
                      leading: Icon( Icons.ballot_outlined, size: 35, color: Color.fromRGBO(109, 109, 109, 1),),
                      title: Text('Расписание',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) =>
                            SchedulePage()));
                      }
                  ),
                  ListTile(
                      leading: Icon( Icons.book_outlined, size: 35, color: Color.fromRGBO(109, 109, 109, 1),),
                      title: Text('История',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      }
                  ),
                  ListTile(
                      leading: Icon( Icons.settings, size: 35, color: Color.fromRGBO(109, 109, 109, 1),),
                      title: Text('Настройки',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(109, 109, 109, 1),
                        ),
                      ),
                      onTap: () {
                      /*  Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Schedule())); */
                      }
                  ),
                ],
              ),

            ),


          ]
      ),
    );
  }
}
