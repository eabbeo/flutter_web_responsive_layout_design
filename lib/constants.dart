import 'package:flutter/material.dart';
import 'package:fweb/pages/favourites.dart';
import 'package:fweb/pages/flutter.dart';
import 'package:fweb/pages/home.dart';
import 'package:fweb/pages/people.dart';
import 'package:fweb/pages/search.dart';
import 'package:sidebarx/sidebarx.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey.shade700,
);

var myDefaultBackground = Colors.grey[300];

var myDrawer = Container(
  color: Colors.white,
  width: 250,
  child: SidebarX(
    theme: const SidebarXTheme(hoverColor: Colors.red),
    controller: SidebarXController(selectedIndex: 0, extended: true),
    items: const [
      SidebarXItem(icon: Icons.home, label: 'Home'),
      SidebarXItem(icon: Icons.search, label: 'Search'),
    ],
  ),
);

var myDesktopDrawer = Container(
  color: Colors.white,
  width: 250,
  child: SidebarX(
    theme: const SidebarXTheme(hoverColor: Colors.red),
    controller: SidebarXController(selectedIndex: 0, extended: true),
    items: const [
      SidebarXItem(icon: Icons.home, label: 'Home'),
      SidebarXItem(icon: Icons.search, label: 'Search'),
    ],
  ),
);

   List<Widget> pages = [
      const Home(),
      const Search(),
      const People(),
      const Favourites(),
      const Flutter()
    ];
