import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/floating_abb_bar/floating_app_bar_controller.dart';

// ignore: must_be_immutable
class FloatingAppBar extends GetView<FloatingAppBarController> {
  final CustomSize customSize;
  final List appBarItem;
  Function(int) onChange;
  FloatingAppBar(
      {required this.customSize,
      required this.appBarItem,
      required this.onChange,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FloatingAppBarController>(
        id: "floatingAppBarId",
        builder: (context) {
          return Visibility(
            visible: true,
            child: Center(
              heightFactor: 1,
              child: Padding(
                  padding: EdgeInsets.only(
                    top:
                        // customSize.screenHeight / 2 +
                        customSize.screenHeight / 5,
                    left: customSize.screenWidth / 7,
                    right: customSize.screenWidth / 7,
                  ),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: customSize.screenWidth / 50,
                          vertical: customSize.screenHeight / 40),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List<Widget>.generate(
                              appBarItem.length,
                              (index) => Card(
                                    elevation: 5,
                                    child: buildonHoverText(customSize, index,
                                        appBarItem[index]['name']),
                                  ))),
                    ),
                  )
                  // }),
                  ),
            ),
          );
        });
  }

  Widget buildonHoverText(CustomSize customSize, int index, String text) {
    return InkWell(
      onTap: () {
        onChange(index);
        // controller.changeScreen(index);
      },
      onHover: (i) {
        controller.hoverEffectInfloatingBar(index, i, "floatingAppBarId");
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: customSize.setHeight(10),
            horizontal: customSize.setWidth(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text,
                style: controller.floatingBarisHovering[index] ||
                        controller.screenIndex == index
                    ? TextStyle(
                        color: Colors.blue.shade600,
                        // fontSize: 14,
                        fontWeight: FontWeight.bold)
                    : const TextStyle(color: Colors.black)
                //  Colors.black,
                ),
            // ]),
            SizedBox(height: customSize.setHeight(5)),
            // For showing an underline on hover
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: controller.floatingBarisHovering[index] ||
                  controller.screenIndex == index,
              child: Container(
                height: customSize.setHeight(2),
                width: customSize.setWidth(20),
                color: Colors.blue.shade400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
