import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey.shade700,
);

var myDefaultBackground = Colors.grey[300];

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: const Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("D A S H B O A R D"),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text("M E S S A G E"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("S E T T I N G S"),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("L O G O U T"),
      ),
    ],
  ),
);

var myDesktopDrawer = Container(
  color: Colors.grey,
  width: 250,
  child: Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage("assets/images/download.jpeg"),
      ),
      const SizedBox(
        height: 20,
      ),
      ExpansionTile(
        leading: const Icon(Icons.draw),
        childrenPadding: const EdgeInsets.only(left: 25),
        expansionAnimationStyle: AnimationStyle(
          curve: Curves.decelerate,
        ),
        title: const Text("Regestration"),
        children: const [
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Members"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Members"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Members"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Members"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Members"),
          ),
        ],
      )
    ],
  ),
);
