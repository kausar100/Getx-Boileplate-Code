import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/utils/dart_extension/dart_utils.dart';
import 'package:flutter_getx_demo/utils/flutter/utilities/border_radius.dart';

class GoogleBtn extends StatelessWidget {
  final Function() onPressed;
  const GoogleBtn({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: FxRadius.all(15.0),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: FxRadius.all(15.0),
          ))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
                width: 20,
              ),
              10.szh(),
              const Text("Google",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
        ));
  }
}

class FacebookBtn extends StatelessWidget {
  final Function() onPressed;
  const FacebookBtn({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: FxRadius.all(15.0),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: FxRadius.all(15.0),
          ))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Ffacebook%20(2).png?alt=media&token=9c275bf0-2bf7-498a-9405-9ae99df8d8f2",
                width: 20,
              ),
              10.szh(),
              const Text("Facebook",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
        ));
  }
}

class GitHubBtn extends StatelessWidget {
  final Function() onPressed;
  const GitHubBtn({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: FxRadius.all(15.0),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: FxRadius.all(15.0),
          ))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/socials%2Fgithub.png?alt=media&token=c8a341e8-2f34-490c-a924-627b84fa3c43",
                width: 20,
              ),
              10.szh(),
              const Text("GitHub",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
        ));
  }
}

class TwitterBtn extends StatelessWidget {
  final Function() onPressed;
  const TwitterBtn({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: FxRadius.all(15.0),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: FxRadius.all(15.0),
          ))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/socials%2Ftwitter.png?alt=media&token=abd55874-2c77-4322-88e0-aa7598ee2a10",
                width: 20,
              ),
              10.szh(),
              const Text("Twitter",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
        ));
  }
}

class AppleBtn extends StatelessWidget {
  final Function() onPressed;
  const AppleBtn({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: FxRadius.all(15.0),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: FxRadius.all(15.0),
          ))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/socials%2Fapple-black-logo.png?alt=media&token=c44581fa-6fd2-4ae2-bd85-18bfbe6386d2",
                width: 20,
              ),
              10.szh(),
              const Text("Apple",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
        ));
  }
}
