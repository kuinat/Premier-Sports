import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:premier_sports/widgets/custom_bottom_nav_bar.dart';
import 'package:premier_sports/widgets/main_drawer_widget.dart';
import 'controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Scaffold(
      drawer: const MainDrawerWidget(),
      body: controller.currentPage,
      bottomNavigationBar: CustomBottomNavigationBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        itemColor: context.theme.colorScheme.secondary,
        currentIndex: controller.currentIndex.value,
        onChange: (index) {
          controller.changePage(index);
        },
        children: [
          CustomBottomNavigationItem(
            icon: Icons.watch_later,
            //label: 'Dashboard',
          ),
          CustomBottomNavigationItem(
            icon: Icons.star,
            //label: 'Community',
          ),
          CustomBottomNavigationItem(
            icon:Icons.camera_alt_outlined,
            //label: 'Events',
          ),
          CustomBottomNavigationItem(
            icon:Icons.dashboard_customize,
            //label: 'Notifications',
          ),
        ],
      ),
    ));
    }
  }

