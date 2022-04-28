import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/login/login_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  // int index = 0 ;
  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const SizedBox();
      //  Scaffold(
      //   body: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       Center(child:
      //      Obx(() {
      //          return Text("${controller.index.value}");
      //        }
      //      )),
      //       SizedBox(
      //         height: customSize.setHeight(600),
      //         child: GetBuilder<LoginController>(
      //           init: controller,
      //                 builder:
      //                 (_)=>  NavigationView(
      //             appBar: const NavigationAppBar(
      //             title:  Center(child: Text('Nice App Title :)')),
      //             ),
      //             pane: NavigationPane(
      //               selected: controller.index.toInt(),
      //               onChanged: (i){
      //                 // controller.changeIndex(i);
      //                 controller.index.value = i ;
      //                 controller.update();
      //                 log("i === $i &&& ${controller.index}");
      //               },
      //                   displayMode: PaneDisplayMode.auto,
      //                   items: [
      //                      PaneItem(
      //                       icon: const Icon(FluentIcons.code),
      //                       title: const Text("Sample Page 1")
      //                     ),
      //                     PaneItem(
      //                       icon: const Icon(FluentIcons.desktop_flow),
      //                       title: const Text("Sample Page 2")
      //                     )
      //                   ]
      //                 ),
      //                 content:NavigationBody(
      //                 index: controller.index.toInt(),
      //                 children: [
      //                   // Container(
      //                   // margin: EdgeInsets.only(top : customSize.setHeight(100) ,
      //                   //  left: customSize.setWidth(100),
      //                   //  right: customSize.setWidth(100)
      //                   //  ),
      //                   // padding: EdgeInsets.symmetric(vertical: customSize.setHeight(20) ,
      //                   //  horizontal: customSize.setWidth(20)),
      //                   // // height: customSize.setHeight(400),
      //                   // // width: customSize.setWidth(50),
      //                   // decoration: BoxDecoration(border: Border.all(color: Colors.red) ,
      //                   // borderRadius: BorderRadius.circular(20),
      //                   // color: Colors.blue),
      //                   //   child:
      //                   body1(customSize: customSize),
      //                   // Center(child:  Text("data11111+++ ${controller.index}"),),
      //                   Center(child:  Text("data22222+++ ${controller.index}"),),
      //                             ]),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // );
    });
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
          // controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) => Column(
            children: [
              Container(
                  height: customSize.setHeight(142.22),
                  // width: customSize.setWidth(120),
                  margin: EdgeInsets.symmetric(
                      vertical: customSize.setHeight(10),
                      horizontal: customSize.setWidth(10)),
                  child: const CircleAvatar()),
              //   Container(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image: NetworkImage(
              //             categories[i].imgUrl,
              //           ),
              //           fit: BoxFit.cover),
              //       border: Border.all(
              //           color: Theme.of(context).primaryColor,
              //           width: 2),
              //       borderRadius: BorderRadius.all(
              //           Radius.elliptical(110, 110)),
              //     ),
              //   ),
              // ),
              const Center(
                child: Text(
                  "categories[i].name",
                  // style: Theme.of(context)
                  //     .textTheme
                  //     .bodyText1!
                  //     .copyWith(fontSize: 18),
                ),
              )
            ],
          ),
          // onTap: () => null) ,
          // ? store.onCategorySelected(categories[i].uuid)
          // : null),
          separatorBuilder: (_, i) => const Divider(),
          itemCount: 10,
        ),
      ));
//     ListView.builder(
//     itemCount: 10,
//     itemBuilder: (context, index) {
//       // final title = "people.keys.elementAt(index)";
//       // final subtitle = "people[title];"
//       return const ListTile(
//         leading: CircleAvatar(
//           // backgroundColor: Colors.white,
//         ),
//         title: Text("title"),
//         subtitle: Text("subtitle"),
//       );
//     }
// ),
  // );
  //  Form(child: Column(
  //     children:  [
  //      const Text("Login"),
  //       SizedBox(height: customSize.setHeight(20)),
  //      const TextBox(
  //         header: "User Name",
  //         placeholder: "Enter User Name",
  //       ),
  //      const TextBox(
  //         header: "passWord",
  //         placeholder: "Enter passWord",
  //       ),
  //       SizedBox(height: customSize.setHeight(20)),

  //       const AutoSuggestBox(
  //         placeholder: "choose your favorite color",
  //         items: ["red" , "blue" , "green" , "yellow" , "black"]) ,
  //       SizedBox(height: customSize.setHeight(20)),
  //         ProgressBar() ,
  //       SizedBox(height: customSize.setHeight(20)),
  //        ProgressRing() ,
  //       SizedBox(height: customSize.setHeight(20)),

  //     ],
  //   )
  // );

  Widget buildBody() {
    return ScreenSizer(builder: (customSize) {
      return const Center(child: Text("data"));
    });
  }
}
