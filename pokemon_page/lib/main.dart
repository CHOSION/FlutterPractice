import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text('POKEMON'),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            // 1개 이상의 위젯리스트 생성
            IconButton(
              icon: Icon(Icons.shopping_cart), // shopping cart icon
              onPressed: () {
                print('Shopping Cart is Clicked.');
              },
            ),
            IconButton(
              icon: Icon(Icons.search), // shopping cart icon
              onPressed: () {
                print('Search Button is Clicked.');
              },
            ),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/Garchomp.png'),
                  backgroundColor: Colors.purple[300],
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Tyranitar.png'),
                    backgroundColor: Colors.purple[300],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Salamence.png'),
                    backgroundColor: Colors.purple[300],
                  ),
                ],
                accountName: Text('Garchomp'),
                accountEmail: Text('garchomp_445@pokemon.go'),
                onDetailsPressed: () {
                  print('arrow is clicked.');
                },
                decoration: BoxDecoration(
                    color: Colors.purple[300],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0))),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: () {
                  print('Home button is clicked.');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('Settings'),
                onTap: () {
                  print('Setting button is clicked.');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: () {
                  print('Q&A button is clicked.');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),

        body: Builder(
          builder: (BuildContext ctx) {
            return Container(
              child: ListView(children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/Garchomp.gif'),
                          radius: 70.0,
                          backgroundColor: Colors.deepPurple[300],
                        ),
                      ),
                      Divider(
                        height: 30.0,
                        color: Colors.grey[800],
                        thickness: 0.5,
                        endIndent: 40.0,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Garchomp',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Max CP',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '4479',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Dragon Tail',
                            style: TextStyle(
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Outrage',
                            style: TextStyle(
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Earth Power',
                            style: TextStyle(
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/Garchomp.png'),
                          radius: 90.0,
                          backgroundColor: Colors.deepPurple[300],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Scaffold.of(ctx).showSnackBar(
                            SnackBar(
                              content: Text('Hello'),
                            ),
                          );
                        },
                        child: Text('SnackBar'),
                        color: Colors.red,
                        textColor: Colors.white,
                      ),
                      FlatButton(
                        onPressed: () {
                          flutterToast();
                        },
                        child: Text('Toast'),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ]),
            );
          },
        ));
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Pokemon',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.blueAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}
