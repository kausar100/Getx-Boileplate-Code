import 'package:flutter_getx_demo/ui/auth/login/login.dart';
import 'package:flutter_getx_demo/ui/home/controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum BottomNavBarItem { home, search, cart, profile }

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56.h,
        width: MediaQuery.of(context).size.width,
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected:
                      homeController.currentNavItem == BottomNavBarItem.home
                          ? true
                          : false,
                  onPressed: () {
                    homeController.onNavItemClicked(BottomNavBarItem.home);
                  },
                ),
                IconBottomBar(
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected:
                      homeController.currentNavItem == BottomNavBarItem.search
                          ? true
                          : false,
                  onPressed: () {
                    homeController.onNavItemClicked(BottomNavBarItem.search);
                  },
                ),
                IconBottomBar(
                  text: "Cart",
                  icon: Icons.local_grocery_store_outlined,
                  selected:
                      homeController.currentNavItem == BottomNavBarItem.cart
                          ? true
                          : false,
                  onPressed: () {
                    homeController.onNavItemClicked(BottomNavBarItem.cart);
                  },
                ),
                IconBottomBar(
                  text: "Profile",
                  icon: Icons.person,
                  selected:
                      homeController.currentNavItem == BottomNavBarItem.profile
                          ? true
                          : false,
                  onPressed: () {
                    homeController.onNavItemClicked(BottomNavBarItem.profile);
                  },
                )
              ],
            ).px24),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 10,
              height: .1,
              color: selected ? primaryColor : Colors.grey.withOpacity(.75)),
        )
      ],
    );
  }
}
