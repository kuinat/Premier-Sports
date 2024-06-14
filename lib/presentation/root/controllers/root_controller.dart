
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:premier_sports/presentation/homepage/home_page.dart';
import '../../../routes/app_routes.dart';


class RootController extends GetxController {
  final currentIndex = 0.obs;
  final notificationsCount = 0.obs;


  RootController() {

  }

  @override
  void onInit() async {
    super.onInit();
  }

  List<Widget> pages = [
     const HomePage(),
     const HomePage(),
    const HomePage(),
     const HomePage(),

  ];

  Widget get currentPage => pages[currentIndex.value];

  Future<void> changePageInRoot(int _index) async {
    // if (Get.find<AuthService>().user.value.email == null && _index > 0) {
    //   await Get.offNamed(Routes.LOGIN);
    // } else {
    //   currentIndex.value = _index;
    //   await refreshPage(_index);
    // }
    currentIndex.value = _index;
    await refreshPage(_index);
  }

  Future<void> changePageOutRoot(int _index) async {
    // if (Get.find<AuthService>().user.value.email == null && _index > 0) {
    //   await Get.toNamed(Routes.LOGIN);
    // }else{
    //   currentIndex.value = _index;
    //   await refreshPage(_index);
    //   await Get.offNamedUntil(Routes.ROOT, (Route route) {
    //     if (route.settings.name == Routes.ROOT) {
    //       return true;
    //     }
    //     return true;
    //   }, arguments: _index);
    // }
    currentIndex.value = _index;
    await refreshPage(_index);
    await Get.offNamedUntil(Routes.ROOT, (Route route) {
      if (route.settings.name == Routes.ROOT) {
        return true;
      }
      return true;
    }, arguments: _index);
  }

  Future<void> changePage(int _index) async {
    if (Get.currentRoute == Routes.ROOT) {
      await changePageInRoot(_index);
    } else {
      await changePageOutRoot(_index);
    }
  }

  Future<void> refreshPage(int _index) async {
    switch (_index) {
      case 0:
        {
          break;
        }
      case 1:
        {
          break;
        }
      case 2:
        {
          break;
        }

      case 3:
        {
          break;
        }
    }
  }


}

