import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Customers Home- CS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // rerun the build method below
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[800],
        title: Text(widget.title,
          style: TextStyle(
              color:Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        shadowColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle:true,

      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.green[50]),
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8),
          children:[
            MaterialButton(
              onPressed: (){},
              color: Colors.amber[900],
              child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'Current Orders:',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:18,
                          fontFamily: 'Times New Roman',
                        )
                    ),
                    Text(
                        '$_counter',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize:20,
                            fontWeight: FontWeight.bold

                        )
                    ),    ]),

            ),
            Image(
              image: AssetImage("assets/recep2.jpg"),
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0),
              child: Card(
                margin:EdgeInsets.all(10),
                child:ListTile(title: Text("Habesha Foods, Injera."),
                    leading: CircleAvatar(backgroundImage:NetworkImage("https://i.ibb.co/ySfcL7H/fvu02767ypm81.jpg"),
                    )
                ),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0),
              child: Card(
                //margin:EdgeInsets.all(10),
                child:ListTile(title: Text("Breakfast for a Single person"),
                    leading: CircleAvatar(
                        backgroundImage:AssetImage("flutter_assets/packages/cupertinoIcons.ttf/assets/g7.jpg"))
                ),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0),
              child: Card(
                //margin:EdgeInsets.all(10),
                child:ListTile(title: Text("Breakfast for a family."),
                    leading: CircleAvatar(
                        backgroundImage:AssetImage("assets/w1.jpg"))
                ),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0),
              child: Card(
                //margin:EdgeInsets.all(10),
                child:ListTile(title: Text("Fruit and vegetable dishes."),
                    leading: CircleAvatar(
                        backgroundImage:AssetImage("assets/recep2.jpg"))
                ),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0),
              child: Card(
                //margin:EdgeInsets.all(10),
                child:ListTile(title: Text("Organic Donat"),
                    leading: CircleAvatar(
                        backgroundImage:AssetImage("assets/w1.jpg"))
                ),),)],),),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.red[900],
        child: const Icon(
            Icons.restaurant_rounded,
            size:30),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Reach GC2023',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}