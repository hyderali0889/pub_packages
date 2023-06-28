# Internet Connectivity Check

This package provides information about the state of internet connection. A permenant solution to Connectivity check problems arising from enabled wifi or mobile data with no internet Access.

This package sends a small api get request to an open source api and provides a bool response.

# Buy me a coffee

If you like the package do consider giving a small cup of coffee for the developer, Thanks.

<a href="https://www.buymeacoffee.com/hyderali32h"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=hyderali32h&button_colour=000000&font_colour=ffffff&font_family=Cookie&outline_colour=ffffff&coffee_colour=ffffff" /></a>


## Features
1. Provides info about network connection withour relying on the state of wifi and mobile data.
2. Uses a very small api to provide results faster.
3. Very small in size does not effect the size of you application.
4. Easy to install and use.
5. Available on all platforms.

## Usage

To use this package import the package as

```
import 'package:internet_connectivity_check/internet_connectivity_check.dart';
```

and then use the provided check Internet Status Function and await the response.

```
 bool connectionStatus = await checkInternetStatus();
```

it is as easy as that a very small package to help in nearly every application

## dependencies
1. [http](https://pub.dev/packages/http "http")
2. [jsonplaceholder](http://jsonplaceholder.typicode.com "jsonplaceholder")
