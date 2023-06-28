import 'package:animated_off_canvas_menu/animated_off_canvas_menu.dart';
import 'package:flutter/material.dart';

class MainFile extends StatefulWidget {
  const MainFile({super.key});

  @override
  State<MainFile> createState() => _MainFileState();
}

class _MainFileState extends State<MainFile> {
  bool isSideBarOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Sidebar(
        internalPadding: const EdgeInsets.all(30),
        isSideBarOpen: isSideBarOpen,
        overlayWidget: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: isSideBarOpen
                      ? BorderRadius.circular(20)
                      : BorderRadius.circular(0)),
              width: size.width,
              height: size.height,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: 200,
                height: 80,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isSideBarOpen = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(14)),
                    child: const Center(child: Text("Open side bar")),
                  ),
                ),
              ),
            )
          ],
        ),
        animationDuration: const Duration(seconds: 1),
        backgroundWidget: Container(
          color: Colors.green,
        ),
        iconButtons: [
          InkWell(
            onTap: () {
              setState(() {
                isSideBarOpen = false;

              });
            },
            child: Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(14)),
              child: const Center(child: Text("Close it")),
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(14)),
              child: const Center(child: Text("Button 2")),
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.purple, borderRadius: BorderRadius.circular(14)),
              child: const Center(child: Text("Button 3")),
            ),
          ),


        ],
      )
      );
      }
}
