import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/ui/global_widgets/bottom_sheets.dart';
import 'package:flutter_getx_demo/ui/global_widgets/dialogs.dart';
import 'package:flutter_getx_demo/utils/dart_extension/dart_utils.dart';
import 'package:flutter_getx_demo/utils/flutter/extension.dart';
import 'package:flutter_getx_demo/utils/flutter/utilities/border_radius.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color(0xff4338CA),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                12.szh(),
                const SearchFieldDrawer(),
                12.szh(),
                MenuItem(
                  text: 'Friends',
                  icon: Icons.people,
                  onClicked: () => selectedItem(context, 0),
                ),
                5.szh(),
                MenuItem(
                  text: 'Liked Photos',
                  icon: Icons.favorite_border,
                  onClicked: () => selectedItem(context, 1),
                ),
                5.szh(),
                MenuItem(
                  text: 'Workflow',
                  icon: Icons.workspaces_outline,
                  onClicked: () => selectedItem(context, 2),
                ),
                5.szh(),
                MenuItem(
                  text: 'Updates',
                  icon: Icons.update,
                  onClicked: () => selectedItem(context, 3),
                ),
                8.szh(),
                const Divider(color: Colors.white70),
                8.szh(),
                MenuItem(
                  text: 'Notifications',
                  icon: Icons.notifications_outlined,
                  onClicked: () => selectedItem(context, 5),
                ),
                MenuItem(
                  text: 'Settings',
                  icon: Icons.settings,
                  onClicked: () => selectedItem(context, 6),
                ),
                MenuItem(
                  text: 'Share',
                  icon: Icons.share,
                  onClicked: () => selectedItem(context, 7),
                ),
              ],
            ).px16,
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Get.back();
    switch (index) {
      case 7:
        Get.bottomSheet(
            CustomBottomSheets.bottomSheetContent(onSelection: (selection) {
          Get.back(closeOverlays: true);
          Get.snackbar('You select', selection.toString(),
              backgroundColor: Colors.orangeAccent);
        }), backgroundColor: Colors.orangeAccent);
        break;
      case 3:
        Get.defaultDialog(content: const DialogContent());
        break;
      default:
        break;
    }
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;

  const MenuItem({
    required this.text,
    required this.icon,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}

class SearchFieldDrawer extends StatelessWidget {
  const SearchFieldDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.white;

    return TextField(
      style: const TextStyle(color: color, fontSize: 14),
      onSubmitted: (value) => Get.back(),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(
          Icons.search,
          color: color,
          size: 20,
        ),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: FxRadius.all(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: FxRadius.all(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }
}
