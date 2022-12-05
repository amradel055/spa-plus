import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:flutter/material.dart';

class HousekeepingServicesWidget extends StatelessWidget {
  const HousekeepingServicesWidget({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.fromLTRB(size.width*.05, size.height*.06,size.width*.05, 0),
      child: GestureDetector(onTap: (){},
        child: Container(
          decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.00)),
            color: Colors.blueAccent,
          ),
          child: Column(
            children: [
              ImageWidget(path: image,  height:  size.height * 0.17,
                width: size.width * 0.45,fit: BoxFit.cover,),
              Padding(
              padding:  EdgeInsets.only(top:size.height*.01),
              child: const TextWidget("house.name!", textAlign: TextAlign.center,weight:FontWeight.bold,size: 20,),
            )
            ],
          ),
        ),
      ),
    );
  }
}
