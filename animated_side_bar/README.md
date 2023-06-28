# Animated Side Bar
This is a simple animated side bar package which allows you to use state of the art side bar design very fast and easily. The implementation is very easy and a lot of features are available.

<a href="https://www.buymeacoffee.com/hyderali32h"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=hyderali32h&button_colour=BD5FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00" /></a>

[See the Side Bar working](https://www.dropbox.com/s/k5tfv7c7ihhnnaz/vid.mp4?dl=0 "See the Side Bar working")

### Features

- Support of multiple background as any widget can be used on the backround.
- Support for multiple buttons and a wide variety of other Widgets as buttons on the sidebar.
- Very Simple Design.
- Rounded Edges when sidebar is open.
- Ability to adjust the padding between buttons.
- Ability to adjust the Animation Duration.


## Import
```
import 'package:animated_off_canvas_menu/animated_off_canvas_menu.dart';
```
### Use

The Implementation is very easy
```
Sidebar(
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
```

The parameters include :
1.  isSideBarOpen ( bool )  : Open or Close the Sidebar.
2. internalPadding ( EdgeInsets ) : The padding of the button inside of the Sidebar.
3. overlayWidget ( Can be any widget ): This is widget that is the main page or displayed over the side bar.
4. animationDuration ( Duration ) : The Duration of the animation.
5. backgroundWidget ( Can be any widget ) : Background of the Sidebar Menu.
6. iconButtons ( List of Widgets )  : The buttons in the side bar


