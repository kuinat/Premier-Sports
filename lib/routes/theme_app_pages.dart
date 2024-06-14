import 'package:get/get.dart' show GetPage, Transition;
import 'package:premier_sports/presentation/root/bindings/root_binding.dart';
import 'package:premier_sports/presentation/root/root_view.dart';


import 'app_routes.dart';

class Theme1AppPages {

  static final routes = [

    GetPage(name: Routes.ROOT, page: () => const RootView(), binding: RootBinding(), transition: Transition.zoom ),


  ];
}
