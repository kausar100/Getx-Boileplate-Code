import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/utils/dart_extension/dart_utils.dart';
import 'package:flutter_getx_demo/utils/flutter/utilities/border_radius.dart';
import 'package:get/get.dart';

class SimpleCustomDialog extends StatelessWidget {
  const SimpleCustomDialog({Key? key}) : super(key: key);
  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: FxRadius.all(15)),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: FxRadius.all(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: primaryColor,
              radius: 25,
              child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/FlutterBricksLogo-Med.png?alt=media&token=7d03fedc-75b8-44d5-a4be-c1878de7ed52"),
            ),
            15.szh(),
            const Text("How are you doing?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            3.5.szh(),
            const Text("This is a sub text, use it to clarify",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w300)),
            15.szh(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleBtn1(
                  text: "Great",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SimpleBtn1(
                  text: "Cancel",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  invertedColors: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: FxRadius.all(15.0),
          boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 25,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/FlutterBricksLogo-Med.png?alt=media&token=7d03fedc-75b8-44d5-a4be-c1878de7ed52"),
          ),
          15.szh(),
          const Text("How are you doing?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          3.5.szh(),
          const Text("This is a sub text, use it to clarify",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300)),
          15.szh(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SimpleBtn1(
                text: "Great",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SimpleBtn1(
                text: "Cancel",
                onPressed: () {
                  Navigator.pop(context);
                },
                invertedColors: true,
              ),
            ],
          ).paddingAll(8.0)
        ],
      ),
    );
  }
}

class SimpleBtn1 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool invertedColors;
  const SimpleBtn1(
      {required this.text,
      required this.onPressed,
      this.invertedColors = false,
      Key? key})
      : super(key: key);
  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          side: MaterialStateProperty.all(
              BorderSide(width: 1, color: primaryColor)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0)),
          backgroundColor: MaterialStateProperty.all(
              invertedColors ? accentColor : primaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: FxRadius.all(8)),
          )),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: invertedColors ? primaryColor : accentColor, fontSize: 16),
      ),
    );
  }
}
