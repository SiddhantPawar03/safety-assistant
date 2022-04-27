import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: Column(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color(0xFF778899),
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/90468365?v=4"),
                ),
                accountName: Text(
                  "Pavan Bhadane",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                accountEmail: Text(
                  "Pavan49719@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Add SoS numbers')),
              ElevatedButton(
                  onPressed: () {}, child: Text('Check Device Status')),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon_button(icon: Icons.call, titleText: "SoS"),
              icon_button(
                  icon: Icons.medical_services, titleText: "Medical Help"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon_button(
                  icon: Icons.fire_extinguisher,
                  titleText: "Fire Extinguisher"),
              icon_button(icon: Icons.local_police, titleText: "Police"),
            ],
          ),
          icon_button(icon: Icons.add_road, titleText: "Road Assistant"),
        ],
      ),
    );
  }
}

class icon_button extends StatelessWidget {
  IconData icon;
  String titleText;
  icon_button({required this.icon, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Material(
            color: Colors.blue, // Button color
            child: InkWell(
              splashColor: Colors.red, // Splash color
              onTap: () {},
              child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Icon(
                    icon,
                    size: 90,
                  )),
            ),
          ),
        ),
        Text(
          titleText,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
