import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/dash_board/home_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ScreenSizer(builder: (customSize) {
        return GetBuilder<HomeController>(
            init: controller,
            builder: (_) {
              return _buildDashBordHome(customSize);
              // return NavigationView(
              //   appBar: const NavigationAppBar(
              //     title: Center(
              //         child: Text(
              //       "الصفحة الرئيسية",
              //       style: TextStyle(
              //         fontSize: 20,
              //       ),
              //     )),
              //   ),
              //   pane: NavigationPane(
              //       selected: controller.selectedIndex.toInt(),
              //       size: NavigationPaneSize(
              //           compactWidth: customSize.setWidth(50)),
              //       onChanged: (i) {
              //         // controller.changeselectedIndex(i);
              //         // if (i == 2) {
              //         //   Get.toNamed(OfferRoutes.allCategoryRoute);
              //         // }
              //         controller.updateSelectedIndex(i);
              //         // controller.selectedIndex.value = i;
              //         // controller.update();
              //         log("i === $i &&& ${controller.selectedIndex}");
              //       },
              //       displayMode: PaneDisplayMode.compact,
              //       items: [
              //         PaneItem(
              //             icon: Column(
              //               children: const [
              //                 Icon(FluentIcons.home),
              //                 Text("Dashboard")
              //               ],
              //             ),
              //             title: const Text("Dashboard")),
              //         PaneItem(
              //             icon: Column(
              //               children: const [
              //                 Icon(FluentIcons.group),
              //                 Text("Identity")
              //               ],
              //             ),
              //             title: const Text("Identity")),
              //         PaneItem(
              //             icon: Column(
              //               children: const [
              //                 Icon(FluentIcons.category_classification),
              //                 Text("Category")
              //               ],
              //             ),
              //             title: const Text("Category")),
              //         PaneItem(
              //             icon: Column(
              //               children: const [
              //                 Icon(FluentIcons.map_directions),
              //                 Text("Districts")
              //               ],
              //             ),
              //             title: const Text("Districts")),
              //         PaneItem(
              //             icon: Column(
              //               children: const [
              //                 Icon(FluentIcons.shop),
              //                 Text("Shops")
              //               ],
              //             ),
              //             title: const Text("Shops")),
              //         PaneItem(
              //             icon: Column(
              //               children: const [
              //                 Icon(FluentIcons.gift_box_solid),
              //                 Text("Offers")
              //               ],
              //             ),
              //             title: const Text("Offers")),
              //       ]),
              //   content: NavigationBody(
              //       index: controller.selectedIndex.toInt(),
              //       children: [
              //         _buildDashboardBody(customSize, context),
              //         const IdentityHomeView(),
              //         // ShowUserView(),
              //         const CategoryHome(),
              //         const DistrictsView(),
              //         const HomeShopView(),
              //         const HomeOfferView()
              //       ]),
              // );
            });
      }),
    );
  }

  Widget _buildDashBordHome(CustomSize customSize) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(customSize.screenWidth, 1000),
        child: GetBuilder<HomeController>(
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              onHover: (i) {
                                controller.showOnHoverSelectEffect(
                                    0, i, "appBarId");
                              },
                              child: Text(
                                'Discover',
                                style: TextStyle(
                                  color: controller.isHovering[0]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: customSize.screenWidth / 20),
                            InkWell(
                                onTap: () {},
                                onHover: (i) {
                                  controller.showOnHoverSelectEffect(
                                      1, i, "appBarId");
                                },
                                child: Text(
                                  'Contact Us',
                                  style: TextStyle(
                                    color: controller.isHovering[1]
                                        ? Colors.blue.shade200
                                        : Colors.white,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (i) {
                          controller.showOnHoverSelectEffect(2, i, "appBarId");
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: controller.isHovering[2]
                                ? Colors.blue.shade200
                                : Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: customSize.screenWidth / 50,
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (i) {
                          controller.showOnHoverSelectEffect(3, i, "appBarId");
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: controller.isHovering[3]
                                ? Colors.blue.shade200
                                : Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      body: Stack(
        children: [
          // ConstrainedBox(
          //     constraints: BoxConstraints(
          //         minWidth: customSize.screenWidth,
          //         minHeight: customSize.screenHeight / 2 +
          //             customSize.screenHeight / 8),
          SizedBox(
              height: customSize.screenHeight / 2 + customSize.screenHeight / 2,
              width: customSize.screenWidth,
              child: Stack(
                children: [
                  CarouselSlider(
                      options: CarouselOptions(
                          // autoPlayInterval: const Duration(seconds: 5),
                          viewportFraction: 1,
                          height: customSize.screenHeight / 2 +
                              customSize.screenHeight / 8,
                          autoPlay: true),
                      items: List.generate(
                        controller.imageUrl.length,
                        (index) => SizedBox(
                          width: customSize.screenWidth,
                          child: Image.asset(
                            controller.imageUrl[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: customSize.setWidth(100),
                      child: CarouselSlider.builder(
                        itemCount: controller.imageUrl.length,
                        itemBuilder: (context, i, j) {
                          return Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black
                                // : Colors.black
                                // (Theme.of(context).brightness == Brightness.dark
                                //         ? Colors.white
                                //         : Colors.black)
                                // .withOpacity(0.4)
                                ),
                          );
                        },
                        options: CarouselOptions(
                            // autoPlayInterval: const Duration(seconds: 5),
                            viewportFraction: 0.3,
                            height: customSize.screenHeight / 2 +
                                customSize.screenHeight / 15,
                            autoPlay: true),
                      ),
                    ),
                  )
                ],
              )),
          Center(
            heightFactor: 1,
            child: Padding(
              padding: EdgeInsets.only(
                top: customSize.screenHeight / 2 + customSize.screenHeight / 30,
                left: customSize.screenWidth / 5,
                right: customSize.screenWidth / 5,
              ),
              child: GetBuilder<HomeController>(
                  id: "floatingAppBarId",
                  builder: (context) {
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: customSize.screenWidth / 50,
                            vertical: customSize.screenHeight / 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildonHoverText(customSize, 0, "Dashboard"),
                            buildonHoverText(customSize, 1, "Identity"),
                            buildonHoverText(customSize, 2, "Category"),
                            buildonHoverText(customSize, 3, "Districts"),
                            buildonHoverText(customSize, 4, "Shops"),
                            buildonHoverText(customSize, 5, "Offers"),
                            buildonHoverText(customSize, 6, "Offers Type"),
                            buildonHoverText(customSize, 7, "User Like/Fav"),
                            buildonHoverText(customSize, 8, "Gender"),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }

  Widget buildonHoverText(CustomSize customSize, int index, String text) {
    return InkWell(
      onTap: () {},
      onHover: (i) {
        controller.hoverEffectInfloatingBar(index, i, "floatingAppBarId");
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text,
              style: controller.floatingBarisHovering[index]
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
            visible: controller.floatingBarisHovering[index],
            child: Container(
              height: customSize.setHeight(2),
              width: customSize.setWidth(20),
              color: Colors.blue.shade400,
            ),
          )
        ],
      ),
    );
  }
}
