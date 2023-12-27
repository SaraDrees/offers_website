import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/dash_board/home_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/widget_state.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) => buildDashBordHome(customSize));
  }

  Widget buildDashBordHome(CustomSize customSize) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: customSize.setWidth(5),
            vertical: customSize.setHeight(20)),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: customSize.setWidth(50),
                ),
                // Expanded(
                //   child:
                const Text(
                  'Categories with shop number',
                  textAlign: TextAlign.start,
                ),
                // ),
              ],
              // )
            ),
            //   ],
            // ),
            StateBuilder<HomeController>(
                id: "categoryListId",
                builder: (widgetState, controller) {
                  return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: customSize.setWidth(2),
                          vertical: customSize.setHeight(20)),
                      child: SizedBox(
                        height: customSize.screenHeight / 2.5,
                        width: customSize.screenWidth,
                        child: Scrollbar(
                          controller: controller.horizontalScrollController,
                          child: ListView.builder(
                              controller: controller.horizontalScrollController,
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.categories.length,
                              itemBuilder: (_, index) => Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: customSize.setWidth(2)),
                                    height: customSize.screenHeight / 3,
                                    width: customSize.screenWidth / 4,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: customSize.screenHeight / 4,
                                          width: customSize.screenWidth / 3.8,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            child:
                                                // Image.network(
                                                //   controller
                                                //       .categories[index].image,
                                                Image.asset(
                                              'assets/images/lock_screen.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: customSize.screenHeight / 100,
                                          ),
                                          child: Text(
                                            controller.categories[index].name,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: customSize.screenHeight / 100,
                                          ),
                                          child: Text(
                                            "shop number : ${controller.categories[index].shops?.length ?? 0}",
                                            // controller.categories[index]
                                            //         .isBranch
                                            //     ? "bransh"
                                            //     : "main",
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                        ),
                      ));
                }),
            // ),
            buildFavoriteShopsRow(customSize)
            // ,
            // )
          ],
        ));
  }

  Widget buildFavoriteShopsRow(CustomSize customSize) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: customSize.setWidth(10),
            vertical: customSize.setHeight(30)),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Favoraite Shops',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: customSize.setWidth(50),
                ),
                // Expanded(
                //   child:
                const Text(
                  'Favorite Shops and user number',
                  textAlign: TextAlign.start,
                ),
                // ),
              ],
              // )
            ),
            //   ],
            // ),
            StateBuilder<HomeController>(
                id: "categoryListId",
                builder: (widgetState, controller) {
                  return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: customSize.setWidth(10),
                          vertical: customSize.setHeight(20)),
                      child: SizedBox(
                        height: customSize.screenHeight / 2.5,
                        width: customSize.screenWidth,
                        child: Scrollbar(
                            controller: controller.horizontalScrollController,
                            child: ListView.builder(
                              controller: controller.horizontalScrollController,
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (_, index) => Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: customSize.setWidth(2)),
                                height: customSize.screenHeight / 3,
                                width: customSize.screenWidth / 4,
                                child: Column(children: [
                                  SizedBox(
                                      height: customSize.screenHeight / 4,
                                      width: customSize.screenWidth / 4,
                                      child: Stack(children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          child:
                                              // Image.network(
                                              //   controller
                                              //       .categories[index].image,
                                              Image.asset(
                                            'assets/images/lock_screen.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // ),
                                        // ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                top: customSize.screenHeight /
                                                    100,
                                              ),
                                              child: Row(
                                                // mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: const [
                                                  Icon(Icons.group),
                                                  Text("user number : 10",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      )),
                                                ],
                                              )
                                              //
                                              ),
                                        ),
                                      ])),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: customSize.screenHeight / 100,
                                    ),
                                    child: const Text(
                                      "shop name",
                                      // controller.categories[index].name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ]),

                                // )
                                //   ],
                                // ),
                              ),
                              // )),
                            )),
                      ));
                }),
            // ),
            // ,
            // )
          ],
        ));
  }
}
