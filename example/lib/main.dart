import 'package:flutter/material.dart';
import 'package:smooth_shadow/smooth_card.dart';
import 'package:smooth_shadow/smooth_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // --  This will give smooth shadow to your text. -- //
              TextShadow(
                // YOU CAN PLAY WITH ALL THESE ATTRIBUTES.
                //
                //  text
                //  fontSize,
                //  color,
                //  horizontalShadow,
                //  verticalShadow,
                //  shadowColor,
                //  fontFamily,
                //  fontStyle,
                //  fontWeight,
                //  blurRadius,
                //  height,
                //  wordSpacing,
                //  letterSpacing,
                text: "Hello World!",
                color: Colors.white,
                fontSize: 46,
              ),
              SizedBox(
                height: 100,
              ),
              // --  This will give smooth shadow to your child Widget. -- //
              SmoothCard(
                // YOU CAN PLAY WITH ALL THESE ATTRIBUTES.
                //
                //   padding,
                //   shadowColor,
                //   blurRadius,
                //   spreadRadius,
                //   horizontalShadow,
                //   verticalShadow,
                //   elevation,
                //   color,
                //   shapeBorder,
                //   clipBehavior,
                //   height,
                //   width,
                //   shape,
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
