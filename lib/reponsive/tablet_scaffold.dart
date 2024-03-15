import 'package:flutter/material.dart';
import 'package:fweb/constants.dart';
import 'package:fweb/util/my_box.dart';
import 'package:fweb/util/my_title.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: myAppBar,
        drawer: myDrawer,
        body: Column(
          children: [
            //4 box on top
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return const MyBox();
                  },
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Mytile();
              },
            ))
          ],
        ),
      ),
    );
  }
}
