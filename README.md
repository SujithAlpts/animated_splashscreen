# Animated SplashScreen

`animated_splashscreen` is a Flutter package that provides an easy way to implement an animated splash screen in your Flutter apps. This package allows you to create smooth transitions and customizable splash screens with minimal code.
## Example GIF

<img src="https://raw.githubusercontent.com/SujithAlpts/animated_splashscreen/main/asset/alplms.gif" alt="Animated GIF" width="400"/>


## Features

- Customizable animations for splash screen transitions
- Easily integrate with existing Flutter projects
- Support for various animation effects (fade, scale, etc.)

## Example

Here's a basic example of how to use the `alp_animated_splashscreen` package:

```dart
import 'package:animated_splashscreen/animated_splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:alp_animated_splashscreen/animated_splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}



class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimatedSplashScreen(
      companyname: 'Alp Turnkey Solutions',
      brandnamecolor: Colors.orange,
      backgroundcolor: Colors.black,
      foregroundcolor: Colors.orange,
      logo: 'assets/logo.png',
      brandname: 'Alp Turnkey Solutions', 
    );
  }
}

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  animated_splashscreen: ^0.0.1


