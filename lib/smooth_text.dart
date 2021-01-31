import 'package:flutter/material.dart';

///Adds smooth shadow to your text.
class TextShadow extends StatelessWidget {
  ///Text to be shown, must not be null.
  final String text;

  /// Font size, default is ```14```.
  final double fontSize;

  ///Text color, default is ```black```.
  final Color color;

  /// if you want to move the shadow to right side on x axis.
  /// use negative values to move to left. e.g ``` -3.0 ```.
  final double horizontalShadow;

  /// if you want to move the shadow down on y axis.
  /// use negative values to move to move up. e.g ``` -3.0 ```.
  final double verticalShadow;

  ///Shadow color.
  final Color shadowColor;

  /// font
  final String fontFamily;

  /// The typeface variant to use when drawing the letters (e.g., italics).
  final FontStyle fontStyle;

  /// The typeface thickness to use when painting the text (e.g., bold).
  final FontWeight fontWeight;

  /// This has the effect of softening the shadow.
  final double blurRadius;

  ///The height of this text span, as a multiple of the font size.
  ///
  /// When [height] is null or omitted, the line height will be determined by the font's metrics directly, which may differ from the fontSize.
  final double height;

  /// The amount of space between words.
  final double wordSpacing;

  /// The amount of space between letters.
  final double letterSpacing;

  const TextShadow({
    Key key,
    @required this.text,
    this.fontSize,
    this.color,
    this.horizontalShadow,
    this.verticalShadow,
    this.shadowColor,
    this.fontFamily,
    this.fontStyle,
    this.fontWeight,
    this.blurRadius,
    this.height,
    this.wordSpacing,
    this.letterSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        height: height,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
        shadows: [
          Shadow(
            offset: Offset(
              horizontalShadow ??
                  2.0, // horizontal move right, use negative values to move the shadow left.
              verticalShadow ??
                  6.0, // vertical move down, use negative values to move the shadow up.
            ),
            blurRadius: blurRadius ?? 20,
            color: shadowColor ?? Colors.grey.shade900.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}