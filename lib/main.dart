import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:premier_sports/presentation/root/bindings/root_binding.dart';

import 'presentation/root/root_view.dart';
import 'routes/theme_app_pages.dart';




initServices() async {
  Get.log('starting services ...');
  Get.log('All services started...');


}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );


  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Premier Sport',
      debugShowCheckedModeBanner: false,
      initialBinding: RootBinding(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   fontFamily: 'Poppins'
      // ),
      //initialRoute: Theme1AppPages.INITIAL,
      getPages: Theme1AppPages.routes,
      home: RootView(),
    );
  }
}


