import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Icon Menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[ // 1개 이상의 위젯리스트 생성
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
                  backgroundImage: AssetImage('assets/Salamence.png'),
                  backgroundColor: Colors.blue[200],
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Tyranitar.png'),
                    backgroundColor: Colors.blue[200],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Garchomp.png'),
                    backgroundColor: Colors.blue[200],
                  ),
                ],
                accountName: Text('Salamence'),
                accountEmail: Text('salamence_373@pokemon.go'),
                onDetailsPressed: () {
                  print('arrow is clicked.');
                },
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home button is clicked.');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: () {
                print('Setting button is clicked.');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
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
    );
  }
}
