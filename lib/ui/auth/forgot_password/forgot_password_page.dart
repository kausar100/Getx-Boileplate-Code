import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/constants/colors.dart';
import 'package:flutter_getx_demo/constants/dimens.dart';
import 'package:flutter_getx_demo/constants/strings.dart';
import 'package:flutter_getx_demo/ui/auth/controller.dart';
import 'package:flutter_getx_demo/ui/global_widgets/custom_buttons.dart';
import 'package:flutter_getx_demo/ui/global_widgets/input_fields.dart';
import 'package:flutter_getx_demo/utils/dart_extension/dart_utils.dart';
import 'package:flutter_getx_demo/utils/flutter/extensions/padding_extension.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  // ------------ Controller ------------
  final _authController = Get.find<AuthController>();

  // ------------ Input Controller ---------------
  final _forgotPasswordController = TextEditingController();

  // ------------ Global Keys -----------------
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: Dimens.mobileScreenSize,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.forgotPasswordLabel,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    20.szh(),
                    const Divider()
                  ],
                ),
                10.szh(),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        inputController: _forgotPasswordController,
                        hintText: "Enter you email id",
                        errorText: "Please enter your email id",
                      )
                    ],
                  ),
                ),
                20.szh(),
                CustomPrimaryButton(
                  buttonColor: AppColors.darkBlue,
                  textValue: "Submit",
                  textColor: AppColors.white,
                  onClick: () {
                    if (_formKey.currentState!.validate()) {
                      _authController.forgotPassword(
                        email: _forgotPasswordController.text,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ).fromLTRB(24, 40.0, 24.0, 0),
    );
  }
}
