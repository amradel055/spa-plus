import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../components/text_widget.dart';
import '../../../../../core/values/app_colors.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color:   Colors.red[900]! , width: size.width * 0.005),
          borderRadius: BorderRadius.circular(size.width * 0.05)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: size.height * 0.1,
              width: size.width * 0.45,
              decoration: BoxDecoration(
                  color: AppColors.appGreyLight,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(size.width * 0.05) , topRight:  Radius.circular(size.width * 0.05))
              ),
              child:
              // car.image != null ?
              FadeInImage(
                height: size.height * 0.15,
                width: size.width * 0.45,
                fit: BoxFit.cover,
                placeholder: const AssetImage("assets/images/placeholder.jpeg"),
                image: const NetworkImage("url" + "/restaurantItem/itemImage/" + "car.image!" ,) ,
                imageErrorBuilder: (context, error, StackTrace) {
                  return Image(
                      height: size.height * 0.15,
                      width: size.width,
                      fit: BoxFit.contain,
                      image: const AssetImage("assets/images/placeholder.jpeg")
                  );
                },)
            // : const SizedBox(),
          ),
          TextWidget("car.name!" ,
            textColor: Colors.red[900]! , maxLines: 1, size: 15, weight: FontWeight.bold,),
          const TextWidget( "100" "LE/day" ,
            textColor:Colors.blue , maxLines: 1, weight: FontWeight.bold,),
          SizedBox(
            width: size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextWidget("seats" , textColor: Colors.blue , maxLines: 1,),
                Icon(Icons.person , color:Colors.blue , size: size.width * 0.05,),
                const TextWidget('5', textColor : Colors.blue , maxLines: 1,),
                const TextWidget("+" ,textColor:Colors.blue ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: size.height * 0.03,
                    child: OutlinedButton(
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => CarsDetails(car)));
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(const RoundedRectangleBorder(side: BorderSide(color: Colors.black)))
                      ),
                      child: TextWidget("More info" , textColor: Colors.red[900]! , weight: FontWeight.bold,),
                    )),
                SizedBox(
                    height: size.height * 0.03,
                    width: size.width * 0.19,
                    child: OutlinedButton(
                      onPressed: (){
                        Get.toNamed(Routes.carsOrder);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red[900]!)
                      ),
                      child: const TextWidget("Book" ,
                        textColor: Colors.white, weight: FontWeight.bold,),
                    )
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
