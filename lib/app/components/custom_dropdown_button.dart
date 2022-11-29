import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {

  final String? iconPath;
  final List<String>? items;
  final Color? arrowColor;
  final String? label;
  final String? hint;
  final String? value;
  final TextInputAction? inputAction;
  final ValueChanged<String?>? onChanged;
  final FormFieldValidator<String>? validate;
  final Color? borderColor;
  final double? rightPadding;
  final double? rightContentPadding;
  final double? leftPadding;
  final double? leftContentPadding;
  final double? topContentPadding;
  final double? bottomContentPadding;
  final double? topPadding;
  final double? borderWidth;
  final bool? enabled;
  final bool? isLoading;
  final bool showErrorText;
  final Color? errorColor;


  const CustomDropDown({
    Key? key,
    this.iconPath,
    this.arrowColor,
    this.label,
    this.hint,
    this.inputAction,
    this.onChanged,
    this.value,
    this.borderColor,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.leftContentPadding,
    this.rightContentPadding,
    this.topContentPadding,
    this.bottomContentPadding,
    this.borderWidth,
    this.items,
    this.validate,
    this.showErrorText=true,
    this.errorColor,
    this.isLoading=false,
    this.enabled=true,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radius),
        borderSide: BorderSide(color: AppColors.fieldBorderColor)
    );
    if(isLoading!)  {
      return Padding(
        padding: EdgeInsets.only(top: topPadding??0,right: rightPadding??0,left: leftPadding??0 ),
        child: SizedBox(
          child: CircularProgressIndicator(),
        ),
      );
    }
    final decoration = InputDecoration(
        border: border,
        isDense: true,
        hintText: hint,
        disabledBorder: border,
        enabledBorder: border,
        fillColor: Colors.white,
        focusedBorder: border,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color:errorColor ?? borderColor??Colors.transparent,width: 2.5),
          borderRadius: BorderRadius.circular(15),
        ) ,
        contentPadding:  EdgeInsets.fromLTRB(leftContentPadding??10, topContentPadding??10, rightContentPadding??10, bottomContentPadding??10),
        labelText:label ,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelStyle: const TextStyle(color: AppColors.grey,fontFamily: "Cairo",),
        errorStyle: showErrorText ? TextStyle(color:errorColor ?? Colors.white,fontFamily: "Cairo"):TextStyle(height: 0),
        prefixIcon: iconPath==null?null:Padding(
          padding: const EdgeInsets.all(10.0).copyWith(left: 20,right: 20),
          child: SvgPicture.asset(iconPath!,width: 20,),
        )
    );
    if(validate == null){
      return Padding(
        padding: EdgeInsets.only(top: topPadding??0,right: rightPadding??0,left: leftPadding??0 ),
        child: InputDecorator(
          decoration: decoration,
          child: DropdownButton<String>(
            value: value,
            underline: SizedBox.shrink(),
            isDense: true,
            hint: TextWidget(hint??""),
            icon: Icon(Icons.keyboard_arrow_down_outlined,color:arrowColor??AppColors.grey,),
            elevation: 16,
            isExpanded: true,
            style: TextStyle(color: Colors.black,fontSize: 18.sp),
            onChanged: onChanged,
            items: items!.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: TextWidget(value, textColor: AppColors.grey),
              );
            }).toList(),
          ),
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.only(top: topPadding??20.h,right: rightPadding??0,left: leftPadding??0 ),
      child:  DropdownButtonFormField<String>(
        value: value,
        validator:validate,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        icon: Icon(Icons.keyboard_arrow_down_outlined,color:arrowColor??AppColors.grey,),
        decoration: decoration,
        elevation: 16,
        isExpanded: true,
        style: TextStyle(color: Colors.black,fontSize: 18.sp),
        onChanged: onChanged,
        items: items!.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style: TextStyle(color: AppColors.grey),),
          );
        }).toList(),
      ),
    );
  }

}
