library smooth_shadow;
import 'package:flutter/material.dart';


class SmoothShadow extends StatelessWidget {
  /// child widget.
  final Widget child;

  ///height of card.
  final double height;

  ///width of card.
  final double width;

  /// by default the card will have padding of [8]
  /// you can edit this attribute as you like, same as any usual padding.
  final EdgeInsetsGeometry padding;

  /// Shadow color, by default it has shadow of ```Colors.grey.withOpacity(0.2)```
  final Color shadowColor;

  /// This has the effect of softening the shadow.
  final double blurRadius;

  /// This has the effect of extending the shadow.
  final double spreadRadius;

  /// if you want to move the shadow little bit to right or left.
  /// use negative values to move to left. e.g ``` -3.0 ```.
  final double horizontalShadow;

  /// if you want to move the shadow little bit up or down.
  /// use negative values to move to up. e.g ``` -3.0 ```.
  final double verticalShadow;

  /// The card elevation, default is ```0```.
  final double elevation;

  ///BoxShape, you can make circular
  final BoxShape shape;

  const SmoothShadow({
    Key key,
    this.child,
    this.shadowColor,
    this.blurRadius,
    this.spreadRadius,
    this.horizontalShadow,
    this.verticalShadow,
    this.height,
    this.width,
    this.padding,
    this.elevation,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        shape: shape ?? BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.grey.withOpacity(0.2),
            blurRadius:
            blurRadius ?? 15, // has the effect of softening the shadow
            spreadRadius:
            spreadRadius ?? 10, // has the effect of extending the shadow
            offset: Offset(
              horizontalShadow ??
                  2.0, // horizontal move right, use negative values to move the shadow left.
              verticalShadow ??
                  6.0, // vertical move down, use negative values to move the shadow up.
            ),
          ),
        ],
      ),
      child: child,
    );
  }
}


