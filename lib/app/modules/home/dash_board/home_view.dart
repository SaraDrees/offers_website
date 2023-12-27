import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/dash_board/home_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/app_bar/app_bar.dart';
import 'package:offers_website/core/widgets/widget_state.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ScreenSizer(builder: (customSize) {
        return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(customSize: customSize),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: customSize.screenHeight / 2 +
                            customSize.screenHeight / 8,
                        width: customSize.screenWidth,
                        child:
                            // Stack(
                            //   children: [
                            CarouselSlider(
                                options: CarouselOptions(
                                    viewportFraction: 1,
                                    height: customSize.screenHeight / 2 +
                                        customSize.screenHeight / 8,
                                    autoPlay: true),
                                items: List.generate(
                                  controller.imageUrl.length,
                                  (index) => SizedBox(
                                    width: customSize.screenWidth,
                                    child: Image.asset(
                                      controller.imageUrl[index]['url'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                      ),
                      // GetBuilder<HomeController>(
                      //     id: "floatingAppBarId",
                      //     builder: (context) {
                      //       return Visibility(
                      //         visible: false,
                      //         child: Center(
                      //           heightFactor: 1,
                      //           child: Padding(
                      //               padding: EdgeInsets.only(
                      //                 top: customSize.screenHeight / 2 +
                      //                     customSize.screenHeight / 10,
                      //                 left: customSize.screenWidth / 7,
                      //                 right: customSize.screenWidth / 7,
                      //               ),
                      //               child: Card(
                      //                 child: Padding(
                      //                   padding: EdgeInsets.symmetric(
                      //                       horizontal:
                      //                           customSize.screenWidth / 50,
                      //                       vertical:
                      //                           customSize.screenHeight / 40),
                      //                   child: Row(
                      //                       mainAxisAlignment:
                      //                           MainAxisAlignment.spaceAround,
                      //                       children: List<Widget>.generate(
                      //                           controller
                      //                               .floatingAppBar.length,
                      //                           (index) => buildonHoverText(
                      //                               customSize,
                      //                               index,
                      //                               controller.floatingAppBar[
                      //                                   index]))),
                      //                 ),
                      //               )
                      //               // }),
                      //               ),
                      //         ),
                      //       );
                      //     })
                    ],
                  ),
                  buildDashBordHome(customSize)
                ])));
      }),
    );
  }

  Widget buildAppBar(
    CustomSize customSize,
  ) =>
      GetBuilder<HomeController>(
          id: "appBarId",
          builder: (controller) {
            return Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Text(
                      'OFFERS',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(width: customSize.screenWidth / 30),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.generateFloatingAppBar(0);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  0, i, "appBarId");
                            },
                            child: Text(
                              'Home',
                              style: TextStyle(
                                color: controller.isHovering[0]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(1);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    1, i, "appBarId");
                              },
                              child: Text(
                                'Identity',
                                style: TextStyle(
                                  color: controller.isHovering[1]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(2);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    2, i, "appBarId");
                              },
                              child: Text(
                                'Districts',
                                style: TextStyle(
                                  color: controller.isHovering[2]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(3);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    3, i, "appBarId");
                              },
                              child: Text(
                                'Categories',
                                style: TextStyle(
                                  color: controller.isHovering[3]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(4);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    4, i, "appBarId");
                              },
                              child: Text(
                                'Shops',
                                style: TextStyle(
                                  color: controller.isHovering[4]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(5);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    5, i, "appBarId");
                              },
                              child: Text(
                                'Offers',
                                style: TextStyle(
                                  color: controller.isHovering[5]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(6);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    6, i, "appBarId");
                              },
                              child: Text(
                                'Offer Types',
                                style: TextStyle(
                                  color: controller.isHovering[6]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(7);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    7, i, "appBarId");
                              },
                              child: Text(
                                'User Like/Fav',
                                style: TextStyle(
                                  color: controller.isHovering[7]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: customSize.screenWidth / 30),
                          InkWell(
                              onTap: () {
                                controller.generateFloatingAppBar(8);
                              },
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    8, i, "appBarId");
                              },
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                  color: controller.isHovering[8]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: customSize.screenWidth / 50,
                    ),
                    InkWell(
                      onTap: () {},
                      onHover: (i) {
                        controller.showOnHoverSelectEffect(9, i, "appBarId");
                      },
                      child: Text(
                        'LogOut',
                        style: TextStyle(
                          color: controller.isHovering[9]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
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
                                              top:
                                                  customSize.screenHeight / 100,
                                            ),
                                            child: Row(
                                              // mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
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
