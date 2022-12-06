import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:flutter/material.dart';

class SpaServicesWidget extends StatelessWidget {
  const SpaServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*.15,
      height: size.height*.1,
      child: Column(
        children: [
          Container(
            height:  size.height * 0.07,
            width: size.width * 0.15,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)  ),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg')
                )
            ),

          ),
          const TextWidget("group.name!",maxLines: 1)
          ,const TextWidget("group.name!",maxLines: 1)
        ],
      ),
    );
  }
}
