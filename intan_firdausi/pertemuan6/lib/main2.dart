import 'package:flutter/material.dart';

void main2() {
  runApp(const sib3a());
}

class sib3a extends StatelessWidget {
  const sib3a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.account_circle, size: 20, color: Colors.white),
              Text(
                'Flutter Demo',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                'Punya Inteun',
                style: TextStyle(fontSize: 15, color: Colors.white70),
              ),
              FlutterLogo(
                size: 30,
                style: FlutterLogoStyle.horizontal,
                textColor: Colors.white,
              ),
              Image.asset(
                'assets/images/Logo Polinema.png',
                width: 30,
                height: 30,
              ),
            ],
          ),
          backgroundColor: Colors.blueAccent,
          // leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings), Icon(Icons.search)],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          //color: const Color.fromARGB(255, 135, 114, 38),
          height: 350,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            //color: Colors.limeAccent,
            border: Border.all(color: Colors.blueAccent, width: 5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_half, color: Colors.amber),
                  Icon(Icons.star_border, color: Colors.amber),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // add
                },
                child: const Text('Press Me', style: TextStyle(fontSize: 16)),
              ),
              TextButton(
                onPressed: () {
                  // add your logic here
                  print('Text Button Pressed');
                },
                child: const Text(
                  'Text Button',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  // add your logic here
                  print('Outlined Button Pressed');
                },
                child: const Text(
                  'Outlined Button',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: () {
                  // add your logic here
                  print('Icon Button Pressed');
                },
                icon: const Icon(Icons.favorite, color: Colors.red),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'ini tombol',
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.message), title: Text('Messages')),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
      ),
    );
  }
}
