import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/constants/dimens.dart';
import 'package:flutter_getx_demo/constants/font_family.dart';
import 'package:flutter_getx_demo/ui/auth/controller.dart';
import 'package:flutter_getx_demo/ui/global_widgets/base_app_bar.dart';
import 'package:flutter_getx_demo/ui/global_widgets/bottom_nav.dart';
import 'package:flutter_getx_demo/ui/global_widgets/drawer.dart';
import 'package:flutter_getx_demo/ui/global_widgets/dropdown_menu.dart';
import 'package:flutter_getx_demo/utils/flutter/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Scaffold(
      drawer: const CustomDrawer(),
      bottomNavigationBar: const BottomNavBar(),
      appBar: BaseAppBar(
        title: Text(
          'title'.tr,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 24.sp,
              color: Colors.white,
              fontFamily: FontFamily.productSans),
        ),
        appBar: AppBar(),
        widgets: [
          CustomDropDownMenu(
            menuList: [
              PopupMenuItem(
                value: 1,
                onTap: () => authController.logOut(),
                child: const Text("Logout"),
              ),
              PopupMenuItem(
                value: 1,
                onTap: () => authController.changeLocale(),
                child: const Text("Change Language"),
              ),
            ],
          )
        ],
      ),
      body: GetX<HomeController>(
          initState: (state) async {
            await Get.find<HomeController>().getAll();
          },
          builder: (homeController) => switch (homeController.currentNavItem) {
                BottomNavBarItem.home => homeController.postList.length > 1
                    ? ScreenTypeLayout.builder(
                        breakpoints: const ScreenBreakpoints(
                          tablet: Dimens.tabletScreenSize,
                          desktop: Dimens.desktopScreenSize,
                          watch: Dimens.mobileScreenSize,
                        ),
                        mobile: (BuildContext context) =>
                            _buildMobile(context, homeController),
                        desktop: (BuildContext context) =>
                            _buildDesktop(context, homeController),
                        tablet: (BuildContext context) =>
                            _buildTablet(context, homeController),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
                BottomNavBarItem.search => Center(
                    child: Text(
                      "Search",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                BottomNavBarItem.cart => Center(
                    child: Text(
                      "Cart",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                BottomNavBarItem.profile => Center(
                    child: Text(
                      "Profile",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
              }),
    );
  }

  _buildMobile(BuildContext context, HomeController homeController) {
    return Obx(() => ListView.builder(
          itemCount: homeController.postList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  homeController.postList[index].title ?? 'a',
                  style: TextStyle(fontSize: 16.sp),
                ),
                subtitle: Text(
                  homeController.postList[index].body ?? 'b',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
            ).px8;
          },
        ));
  }

  _buildTablet(BuildContext context, HomeController homeController) {
    return GridView.builder(
      itemCount: homeController.postList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(
              homeController.postList[index].title ?? 'a',
              style: TextStyle(fontSize: 10.sp),
            ),
            subtitle: Text(
              homeController.postList[index].body ?? 'b',
              style: TextStyle(fontSize: 8.sp),
            ),
          ),
        ).px8;
      },
    );
  }

  _buildDesktop(BuildContext context, HomeController homeController) {
    return GridView.builder(
      itemCount: homeController.postList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(
              homeController.postList[index].title ?? 'a',
              style: TextStyle(fontSize: 8.sp),
            ),
            subtitle: Text(
              homeController.postList[index].body ?? 'b',
              style: TextStyle(fontSize: 6.sp),
            ),
          ),
        ).px8;
      },
    );
  }
}
