import 'package:flutter/material.dart';
import 'package:fweb/constants.dart';
import 'package:fweb/util/my_box.dart';
import 'package:fweb/util/my_title.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
