import 'package:flutter_getx_demo/constants/app_theme.dart';
import 'package:flutter_getx_demo/ui/auth/register/register.dart';
import 'package:flutter_getx_demo/utils/dart_extension/dart_utils.dart';

import './login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // --------------------- Controller ---------------------
  final _authController = Get.find<AuthController>();

  // --------------------- Global Keys ---------------------
  final _loginFormKey = GlobalKey<FormState>();

  // --------------------- Input Fields ---------------------
  final emailController = TextEditingController(text: 'gk@gmail.com');
  final passwordController = TextEditingController(text: '111111');

  // --------------------- Variables ---------------------
  bool passwordVisible = false;

  // --------------------- Functions ---------------------
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void _loginRequested() async {
    if (_loginFormKey.currentState!.validate()) {
      // await _authController
      //     .login(emailController.text, passwordController.text)
      //     .then((value) {
      //   Get.offAllNamed(Routes.HOME);
      // });
      Get.offAllNamed(Routes.HOME);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SafeArea(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Strings.loginHeading,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          GestureDetector(
                              onTap: () {
                                Get.changeTheme(
                                    Get.isDarkMode ? themeData : themeDataDark);
                              },
                              child: Icon(Get.isDarkMode
                                  ? Icons.sunny
                                  : Icons.dark_mode))
                        ],
                      ),
                      20.szh(),
                      const Divider()
                    ],
                  ),
                  10.szh(),
                  Form(
                    key: _loginFormKey,
                    child: Column(
                      children: [
                        EmailTextField(
                          inputController: emailController,
                        ),
                        14.szh(),
                        PasswordInputField(
                          textEditingController: passwordController,
                        )
                      ],
                    ),
                  ),
                  22.szh(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomCheckbox(),
                      12.szh(),
                      Text(Strings.rememberMe,
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                  32.szh(),
                  CustomPrimaryButton(
                    buttonColor: AppColors.darkBlue,
                    textValue: Strings.loginLabel,
                    textColor: Colors.white,
                    onClick: () {
                      _loginRequested();
                    },
                  ),
                  24.szh(),
                  Center(
                    child: Text(
                      'OR',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: AppColors.grey),
                    ),
                  ),
                  24.szh(),
                  // Google Sign In
                  CustomPrimaryButton(
                    buttonColor: AppColors.lightGrey,
                    textValue: Strings.loginWithGoogle,
                    textColor: AppColors.black,
                    onClick: () {},
                  ),
                  50.szh(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.dontHaveAccount,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: AppColors.grey),
                      ),
                      Text(
                        Strings.registerLabel,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: AppColors.darkBlue),
                      ).onTap(() {
                        Get.offNamed(Routes.REGISTER);
                      }),
                    ],
                  ),
                  10.szh(),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.FORGOT_PASSWORD);
                    },
                    child: Text(
                      Strings.forgotPassword,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: AppColors.darkBlue, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ).fromLTRB(24, 16.0, 24.0, 0),
        ),
      ),
    );
  }
}
