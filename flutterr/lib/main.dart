import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("K3521024")),
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 231, 224),
        body: const Center(
          child: Text(
            "Farikhatun Khoirur Rosyidah",
            style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.search_rounded),
          label: Text('Search'),
          // child: const Icon(Icons.search),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: const Drawer(
          //drawer navigation on scaffold
          child: SafeArea(
            child: Column(
              //column widget
              children: [
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text("List"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.login),
                  title: Text("Login"),
                ),
                //put more menu items here
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //bottom navigation bar on scaffold
          items: const [
            //items inside navigation bar
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Tambah",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete),
              label: "Hapus",
            ),
            //put more items here
          ],
        ),
      ),
    );
  }
}
