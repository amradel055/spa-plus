import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:flutter/material.dart';

import 'icon_button_widget.dart';

class ErrorRefreshWidget extends StatelessWidget {
  const ErrorRefreshWidget({Key? key, required this.title, this.onRefresh}) : super(key: key);
  final String title;
  final void Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(title,textAlign: TextAlign.center),
          const SizedBox(height: 5),
          if(onRefresh != null)
          IconButtonWidget(icon: Icons.refresh_rounded,onPressed: onRefresh)
        ],
      ),
    );
  }
}
