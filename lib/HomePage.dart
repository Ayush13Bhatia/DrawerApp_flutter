import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ayush'),
              accountEmail: Text('ayushbhatia@learncodeonline.in'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('AB'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Category'),
              trailing: Icon(Icons.card_travel),
              onTap: () => Navigator.of(context).pushNamed("/a"),
            ),
            ListTile(
              title: Text('Profile'),
              trailing: Icon(Icons.more),
              onTap: () => Navigator.of(context).pushNamed("/p"),
            ),
            Divider(),
            ListTile(
              title: Text("Mascot"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cloud_circle),
        onPressed: () {},
      ),
    );
  }
}
