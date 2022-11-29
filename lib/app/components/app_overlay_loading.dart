import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:flutter/material.dart';

class AppOverlayLoading extends StatelessWidget {
  const AppOverlayLoading({Key? key,required this.child,required this.isLoading}) : super(key: key);
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if(isLoading)
        ColoredBox(
          color: Colors.black12,
          child: Center(
            child: Common.getSpin(),
          ),
        )
      ],
    );
  }
}
