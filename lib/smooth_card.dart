import 'package:flutter/material.dart';
import 'package:smooth_shadow/smooth_shadow.dart';

class SmoothCard extends SmoothShadow {
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

  /// Card color, default is white.
  final Color color;

  ///child widget.
  final Widget child;

  /// To add borders or rounded corners.
  ///
  /// takes [RoundedRectangleBorder].
  final ShapeBorder shapeBorder;

  /// To clip widget content.
  ///
  /// you can choose
  final Clip clipBehavior;

  ///
  final BoxShape shape;

  /// Provides card widget with smooth shadow.
  SmoothCard({
    this.padding,
    this.shadowColor,
    this.blurRadius,
    this.spreadRadius,
    this.horizontalShadow,
    this.verticalShadow,
    this.elevation,
    this.color,
    this.child,
    this.shapeBorder,
    this.clipBehavior,
    this.height,
    this.width,
    this.shape,
  })  : assert(child != null,
  'SmoothCard can\'t build withouth child, please provide child.'),
        super(shape: shape);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        // shape: shape ?? BoxShape.rectangle,
      ),
      child: SmoothShadow(
        blurRadius: blurRadius,
        spreadRadius:
        spreadRadius ?? 10, // has the effect of extending the shadow
        horizontalShadow: horizontalShadow,
        verticalShadow: verticalShadow,
        shadowColor: shadowColor,
        shape: shape ?? BoxShape.rectangle,
        child: Card(
          elevation: elevation ?? 0,
          color: color ?? Theme.of(context).cardColor,
          clipBehavior: clipBehavior ?? Clip.antiAlias,
          shape: shapeBorder,
          child: child,
        ),
      ),
    );
  }
}