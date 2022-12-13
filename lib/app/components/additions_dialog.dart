import 'package:easy_hotel/app/components/button_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';

class AdditionsDialog extends StatelessWidget {
  const AdditionsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.radius)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SingleChildScrollView(
              padding: AppConstants.pagePadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for(int i =0;i<1;i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget("النوع:", weight: FontWeight.bold, size: 14),
                      Wrap(
                        spacing: 5,
                        runSpacing: -10,
                        children: [
                          for(int i = 0; i < 3; i++)
                          Chip(
                            label: const TextWidget("عنوان", textColor: Colors.white,),
                            backgroundColor: Theme.of(context).primaryColor,
                            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: AppConstants.pagePadding,
            child: ButtonWidget(
              text: AppStrings.close,
              onPressed: (){},
              expanded: true,
            ),
          ),
        ],
      ),
    );
  }
}
