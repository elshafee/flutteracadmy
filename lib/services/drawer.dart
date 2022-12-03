import 'package:flutter/material.dart';

class Draw extends StatefulWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                child: Icon(
                  (Icons.person),
                ),
              ),
            ],
            onDetailsPressed: () {
              Navigator.of(context).pushNamed('/profile');
            },
            accountName: const Text("Ahmad Elshafee"),
            accountEmail: const Text("ahmadelshafee28@gmail.com"),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home Screen"),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile Screen"),
            onTap: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
        ],
      ),
    );
  }
}
