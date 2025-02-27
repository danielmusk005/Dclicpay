import 'package:flutter/material.dart';


class Transaction extends StatefulBuilder {
  const Transaction({super.key, required super.builder});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[200],
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/2.png"),
          ),
          SizedBox(width: 10),
          Text("Hello, Girl!", style: TextStyle(color: Colors.black)),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        )
      ],
    ),
    body: Column(
      children: [
        Container(
          height: 250,
          width: 330,
          color: Color.fromARGB(190, 1, 147, 245),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sacolf account'),
                  Text('Daniel Dos'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\$947,344.53"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Total balance")],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Added card:08'),
                  Text('Ac.132627'),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Features'),
            Text('see more'),
          ],
        ),
        SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 10,
            width: 30,
            color: Color.fromARGB(226, 226, 226, 226),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.monetization_on)),
          ),
          Container(
            height: 10,
            width: 30,
            color: Color.fromARGB(226, 226, 228, 226),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.money_rounded)),
          ),
          Container(
            height: 10,
            width: 30,
            color: Color.fromARGB(226, 226, 228, 226),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          ),
        ]),
        ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(("assets/images/4.png")),
            ),
            title: Text("Miradie"),
            subtitle: Text("22 fév 2025"),
            trailing: Column(
              children: [Text("\$1000"), Text("22h40")],
            ),
          );

          // ignore: dead_code
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(("assets/images/3.png")),
            ),
            title: Text("Tray"),
            subtitle: Text("31 jan 2025"),
            trailing: Column(
              children: [Text("\$1660"), Text("12h40")],
            ),
          );

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(("assets/images/3.png")),
            ),
            title: Text("Yvette"),
            subtitle: Text(" 02 jan 2025"),
            trailing: Column(
              children: [Text("\$1660"), Text("22h40")],
            ),
          );
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(("assets/images/5.png")),
            ),
            title: Text("Mavel"),
            subtitle: Text(" 28 Dec 2024"),
            trailing: Column(
              children: [Text("\$760"), Text("21h40")],
            ),
          );
          
        })
      ],
    ),
  );
}
