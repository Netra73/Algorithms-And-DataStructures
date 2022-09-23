import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ADS'),
          backgroundColor: Colors.black,
          bottom:  const TabBar(
            tabs: <Widget>[
              Tab(child: Text('Tab1',style: TextStyle(fontSize: 18),)),
              Tab(child: Text('Tab2',style: TextStyle(fontSize: 18),)),
              Tab(child: Text('Tab3',style: TextStyle(fontSize: 18),)),
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Center(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                          leading:  Text("$index"),
                          title: Text("Tab 1 ")),
                    );
                  }),
            ),
            Center(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                          leading:  Text("$index"),
                          title: Text("Tab2")),
                    );
                  }),
            ),
            Center(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                          leading:  Text("$index"),
                          title: Text("Tab3")),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
