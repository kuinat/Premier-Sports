
import 'package:flutter/material.dart';
import 'drawer_link_widget.dart';

class MainDrawerWidget extends StatelessWidget {

  const MainDrawerWidget({super.key});




  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
         GestureDetector(
                onTap: () async {
                  //await Get.find<RootController>().changePage(3);
                },
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).hintColor.withOpacity(0.1),
                  ),
                  accountName: Text(
                     "Premier Sports",
                    style: Theme.of(context).textTheme.headline2!.merge(const TextStyle(color: Colors.blue, fontSize: 15)),
                  ),
                  accountEmail: Text(""
                  ),
                  currentAccountPicture: Stack(
                    children: [

                    ],
                  ),
                ),
              ),
          SizedBox(height: 20),
          /*DrawerLinkWidget(
            special: false,
            drawer: false,
            icon: Icons.home_outlined,
            text: "Home",
            onTap: (e) async {
              //Get.back();
              await Get.toNamed(Routes.ROOT);
            },
          ),*/

            DrawerLinkWidget(
                special: false,
                //icon: FontAwesomeIcons.userGroup,
                text: 'Community',
                drawer: true,
                onTap: (e) async {
                  //Get.back();
                  //await Get.find<RootController>().changePage(1);
                }
            ),




    ]
    ));
  }
}
