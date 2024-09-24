import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/utils/flutter/extension.dart';

class CustomBottomSheets {
  static void showSimpleModelBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        // Using Wrap makes the bottom sheet height the height of the content.
        // Otherwise, the height will be half the height of the screen.
        return const Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Get link'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit name'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Delete collection'),
            ),
          ],
        );
      },
    );
  }

  static Widget bottomSheetContent(
          {required Function(String name) onSelection}) =>
      Wrap(
        children: [
          const ListTile(
            leading: Icon(Icons.link),
            title: Text('Get link'),
          ).onSelect(name: 'Get link', onClick: onSelection),
          const ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit name'),
          ).onSelect(name: 'Edit name', onClick: onSelection),
          const ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete collection'),
          ).onSelect(name: 'Delete collection', onClick: onSelection),
        ],
      );
}
