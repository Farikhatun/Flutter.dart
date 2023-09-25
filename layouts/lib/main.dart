import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // variabel gambar
    Widget expanded = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(135),
          child: Image.asset('images/saladbuah.jpg', fit: BoxFit.cover),
        ),
      ),
    );

    // variabel judul
    Widget titleSection = Container(
      padding: const EdgeInsets.all(25),
      child: const Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Salad Buah',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star, color: Colors.black),
            ],
          )
        ],
      ),
    );

    // variabel review
    Widget reviewSection1 = Container(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Icon(
            Icons.account_circle,
            size: 35,
          ),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'User 1',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                    'Vocent option mentitum pri et, ut graece doctus inciderint nec!'),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star, size: 20, color: Colors.black),
            ],
          )
        ],
      ),
    );

    Widget reviewSection2 = Container(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Icon(
            Icons.account_circle,
            size: 35,
          ),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'User 2',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                    'Vocent option mentitum pri et, ut graece doctus inciderint nec!'),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star, size: 20, color: Colors.black),
              Icon(Icons.star, size: 20, color: Colors.black),
            ],
          )
        ],
      ),
    );

    Widget reviewSection3 = Container(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Icon(
            Icons.account_circle,
            size: 35,
          ),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'User 3',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                    'Vocent option mentitum pri et, ut graece doctus inciderint nec!'),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
              Icon(Icons.star,
                  size: 20, color: Color.fromARGB(255, 255, 198, 9)),
            ],
          )
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recipes'),
          backgroundColor: Colors.black54,
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 90),
            child: Text(
              'Recipe',
              style: TextStyle(fontSize: 20),
            ),
          ),
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 255, 188, 63),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: const Drawer(
          child: SafeArea(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text("Menu"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.login),
                  title: Text("Login"),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            //gambar,
            expanded,
            //judul,
            titleSection,
            //review,
            reviewSection1,
            reviewSection2,
            reviewSection3,
          ],
        ),
      ),
    );
  }
}
