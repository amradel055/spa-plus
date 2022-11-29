import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final Widget child;
  final Color? shadowColor;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  final Color? color;
  final double? borderWidth;
  final Gradient? gradient;
  final double radius;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;

  const CustomCard({
    Key? key,
    required this.child,
    this.shadowColor,
    this.gradient,
    this.padding,
    this.borderWidth,
    this.radius = AppConstants.radius,
    this.borderColor,
    this.color,
    this.height,
    this.width,
    this.margin
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      clipBehavior: Clip.antiAlias,
      height:height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).backgroundColor,
          // border: borderWidth ==null?null:Border.all(color: borderColor??Theme.of(context).primaryColor,width: borderWidth!),
          gradient: gradient,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
                color: shadowColor??Theme.of(context).shadowColor,
                blurRadius: 3,
                offset: Offset(0.0,3.0),
                spreadRadius: 1.5
            )
          ]
      ),
      foregroundDecoration: BoxDecoration(
        border: borderWidth ==null?null:Border.all(color: borderColor??Theme.of(context).primaryColor,width: borderWidth!),
        borderRadius: BorderRadius.circular(radius),
      ),
      duration: Duration(milliseconds: 300),
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
