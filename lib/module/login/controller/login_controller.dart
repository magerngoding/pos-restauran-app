import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "admin@demo.com";
  String password = "123456";

  doLogin() async {
    showLoading();
    try {
      await AuthService().login(
        email: email,
        password: password,
      );
      hideLoading();
      Get.offAll(const MainNavigationView());
    } on Exception {
      showInfoDialog('Wrong username or password!');
    }
    hideLoading();
  }
}