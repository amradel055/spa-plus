import 'dart:io';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:url_launcher/url_launcher.dart';

import 'common.dart';

class Launcher{


  callNumber(String number)async{
    final url = 'tel:$number';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Common.showToast(AppStrings.canNotCall);
    }
  }

  openLink(String url)async{
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Common.showToast(AppStrings.canNotOpenUrl);
    }
  }

  openStore() async {
    const playStore = AppConstants.GOOGLE_PLAY;
    const appleStore = '';
    late String url;
    if(Platform.isIOS){
      url = appleStore;
    } else {
      url = playStore;
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Common.showToast(AppStrings.canNotOpenUrl);
    }
  }


}