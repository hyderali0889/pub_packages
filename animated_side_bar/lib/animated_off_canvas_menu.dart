import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar(
      {super.key,
      required this.overlayWidget,
      required this.backgroundWidget,
      required this.animationDuration,
      required this.iconButtons,
      required this.isSideBarOpen,
      required this.internalPadding});

  final Widget overlayWidget;
  final bool isSideBarOpen;
  final Widget backgroundWidget;
  final Duration animationDuration;
  final List<Widget> iconButtons;
  final EdgeInsets internalPadding;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: Stack(
            children: [
              Stack(
                children: [
                  widget.backgroundWidget,
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.6 ,
                          height: size.height * 0.9,
                          child: ListView.builder(
                              itemCount: widget.iconButtons.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: widget.internalPadding,
                                  child: widget.iconButtons[index],
                                );
                              }),
                        )
                      ],
                    ),

                ],
              ),
              AnimatedPositioned(
                duration: widget.animationDuration,
                top: widget.isSideBarOpen ? 50 : 0,
                right: widget.isSideBarOpen ? -50 : 0,
                child: AnimatedContainer(
                  duration: widget.animationDuration,
                  height: widget.isSideBarOpen ? 650 : size.height,
                  width: widget.isSideBarOpen ? size.width * 0.5 : size.width,
                  child: widget.overlayWidget,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
