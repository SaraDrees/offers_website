import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/login/login_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const SizedBox();});
  }

  Widget body1({required CustomSize customSize}) => Container(
      margin: EdgeInsets.only(
          top: customSize.setHeight(100),
          left: customSize.setWidth(100),
          right: customSize.setWidth(100)),
      padding: EdgeInsets.symmetric(
          vertical: customSize.setHeight(20),
          horizontal: customSize.setWidth(20)),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: customSize.setHeight(500),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) => Column(
            children: [
              Container(
                  height: customSize.setHeight(142.22),
                  margin: EdgeInsets.symmetric(
                      vertical: customSize.setHeight(10),
                      horizontal: customSize.setWidth(10)),
                  child: const CircleAvatar()),
              const Center(
                child: Text(
                  "categories[i].name",
                ),
              )
            ],
          ),
           separatorBuilder: (_, i) => const Divider(),
          itemCount: 10,
        ),
      ));

  Widget buildBody() {
    return ScreenSizer(builder: (customSize) {
      return const Center(child: Text("data"));
    });
  }
}
