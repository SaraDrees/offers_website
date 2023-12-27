import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/add_shop/add_shop_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class AddShopView extends GetView<AddShopController> {
  const AddShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return Container(
        padding: EdgeInsets.symmetric(
            vertical: customSize.setHeight(40),
            horizontal: customSize.setWidth(20)),
        child: const Text("data"),
        //   child: Obx(() {
        //     return TabView(
        //         currentIndex: controller.stepCount.value,
        //         onChanged: (i) => controller.updateStepCount(i),
        //         tabs: [
        //           Tab(
        //               closeIcon: null,
        //               text: Text(
        //                 "Basic Info",
        //                 style: controller.stepCount.value == 0
        //                     ? const TextStyle(color: Colors.blue, fontSize: 20)
        //                     : const TextStyle(color: Colors.black),
        //               ),
        //               icon: null),
        //           Tab(
        //               closeIcon: null,
        //               text: Text(
        //                 "Extra Info",
        //                 style: controller.stepCount.value == 1
        //                     ? const TextStyle(color: Colors.blue, fontSize: 20)
        //                     : const TextStyle(color: Colors.black),
        //               ),
        //               icon: null),
        //         ],
        //         bodies: [
        //           _buildBasicInfoBody(customSize),
        //           _buildExtraInfoBody(customSize)
        //         ]);
        //   }),
        // );
      );
    });
  }

  // Widget _buildExtraInfoBody(CustomSize customSize) => Container(
  //       margin: EdgeInsets.symmetric(vertical: customSize.setHeight(80)),
  //       child: SingleChildScrollView(
  //         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  //           Row(children: [
  //             const Text(
  //               "Phone : ",
  //               style: TextStyle(fontSize: 20),
  //             ),
  //             Flexible(
  //               child: Container(
  //                   // decoration: BoxDecoration(border: Border.all()),
  //                   width: customSize.screenWidth / 4,
  //                   padding: EdgeInsets.symmetric(
  //                       horizontal: customSize.setWidth(2)),
  //                   child: const TextBox(
  //                     decoration: BoxDecoration(border: Border()),
  //                     // placeholder: "shop name",
  //                   )),
  //             ),
  //           ]),
  //           SizedBox(
  //             height: customSize.setHeight(50),
  //           ),
  //           Row(
  //             // mainAxisSize: MainAxisSize.min,
  //             children: [
  //               const Text(
  //                 "Address : ",
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //               Container(
  //                   decoration:
  //                       BoxDecoration(borderRadius: BorderRadius.circular(5)),
  //                   // border: Border.all(color: Colors.blue)),
  //                   width: customSize.screenWidth / 3,
  //                   padding: EdgeInsets.symmetric(
  //                       horizontal: customSize.setWidth(2)),
  //                   child: const TextBox(
  //                     maxLines: 5,
  //                     decoration: BoxDecoration(border: Border()),
  //                     // placeholder: "category name",
  //                   )),
  //             ],
  //           ),
  //           SizedBox(
  //             height: customSize.setHeight(50),
  //           ),
  //           Row(
  //             children: [
  //               const Text(
  //                 "FaceBook : ",
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //               Flexible(
  //                 child: Container(
  //                     // decoration: BoxDecoration(border: Border.all()),
  //                     width: customSize.screenWidth / 4,
  //                     padding: EdgeInsets.symmetric(
  //                         horizontal: customSize.setWidth(2)),
  //                     child: const TextBox(
  //                       decoration: BoxDecoration(border: Border()),
  //                       // placeholder: "shop name",
  //                     )),
  //               ),
  //               SizedBox(
  //                 width: customSize.setWidth(50),
  //               ),
  //               Row(mainAxisSize: MainAxisSize.min, children: [
  //                 const Text(
  //                   "Instegram : ",
  //                   style: TextStyle(fontSize: 20),
  //                 ),
  //                 Flexible(
  //                   child: Container(
  //                       // decoration: BoxDecoration(border: Border.all()),
  //                       width: customSize.screenWidth / 4,
  //                       padding: EdgeInsets.symmetric(
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const TextBox(
  //                         decoration: BoxDecoration(border: Border()),
  //                         // placeholder: "shop name",
  //                       )),
  //                 ),
  //               ]),
  //             ],
  //           ),
  //           SizedBox(
  //             height: customSize.setHeight(100),
  //           ),
  //           // FilledButton(
  //           //     child: SizedBox(
  //           //       width: customSize.setWidth(50),
  //           //       child: const Text("Done"),
  //           //     ),
  //           //     onPressed: () {})
  //         ]),
  //       ),
  //     );

  // Widget _buildBasicInfoBody(CustomSize customSize) => SingleChildScrollView(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Row(
  //             children: [
  //               const Text(
  //                 "Picture : ",
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //               Container(
  //                   margin: EdgeInsets.symmetric(
  //                       horizontal: customSize.setWidth(20),
  //                       vertical: customSize.setHeight(40)),
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(20),
  //                       border: Border.all(color: Colors.blue)),
  //                   width: customSize.setWidth(80),
  //                   height: customSize.setHeight(180),
  //                   child: Icon(
  //                     FluentIcons.image_crosshair,
  //                     size: customSize.setWidth(20),
  //                   )),
  //             ],
  //           ),
  //           Row(
  //             children: [
  //               const Text(
  //                 "Name : ",
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //               Flexible(
  //                 child: Container(
  //                     // decoration: BoxDecoration(border: Border.all()),
  //                     width: customSize.screenWidth / 4,
  //                     padding: EdgeInsets.symmetric(
  //                         horizontal: customSize.setWidth(2)),
  //                     child: const TextBox(
  //                       decoration: BoxDecoration(border: Border()),
  //                       placeholder: "shop name",
  //                     )),
  //               ),
  //               SizedBox(
  //                 width: customSize.setWidth(20),
  //               ),
  //               const Text("Categroy : "),
  //               Flexible(
  //                 child: Container(
  //                   decoration: BoxDecoration(
  //                       // borderRadius: BorderRadius.circular(10),
  //                       border: Border.all(color: Colors.blue)),
  //                   width: customSize.screenWidth / 4,
  //                   child: Combobox<String>(
  //                       isExpanded: true,
  //                       placeholder: const Text("Select"),
  //                       value: controller.selectedCategory,
  //                       items: const [
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                       ]),
  //                 ),
  //               )
  //             ],
  //           ),
  //           SizedBox(
  //             height: customSize.setHeight(50),
  //           ),
  //           Row(
  //             // mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             children: [
  //               const Text(
  //                 "District : ",
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //               Flexible(
  //                 child: Container(
  //                   decoration: BoxDecoration(
  //                       // borderRadius: BorderRadius.circular(10),
  //                       border: Border.all(color: Colors.blue)),
  //                   width: customSize.screenWidth / 4,
  //                   child: Combobox<String>(
  //                       isExpanded: true,
  //                       placeholder: const Text("Select"),
  //                       value: controller.selectedCategory,
  //                       items: const [
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                         ComboboxItem<String>(
  //                             value: "ffffff", child: Text("data1")),
  //                       ]),
  //                 ),
  //               ),
  //               SizedBox(
  //                 width: customSize.setWidth(20),
  //               ),
  //               const Text("User Name : "),
  //               Flexible(
  //                 child: Container(
  //                     // decoration: BoxDecoration(border: Border.all()),
  //                     width: customSize.screenWidth / 4,
  //                     padding: EdgeInsets.symmetric(
  //                         horizontal: customSize.setWidth(2)),
  //                     child: const TextBox(
  //                       decoration: BoxDecoration(border: Border()),
  //                       placeholder: "user name",
  //                     )),
  //               ),
  //             ],
  //           ),
  //           SizedBox(
  //             height: customSize.setHeight(50),
  //           ),
  //           Row(
  //             // mainAxisSize: MainAxisSize.min,
  //             children: [
  //               const Text(
  //                 "Description : ",
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //               Container(
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(5),
  //                       border: Border.all(color: Colors.blue)),
  //                   width: customSize.screenWidth / 3,
  //                   padding: EdgeInsets.symmetric(
  //                       horizontal: customSize.setWidth(2)),
  //                   child: const TextBox(
  //                     maxLines: 5,
  //                     decoration: BoxDecoration(border: Border()),
  //                     // placeholder: "category name",
  //                   )),
  //             ],
  //           ),
  //           SizedBox(
  //             height: customSize.setHeight(50),
  //           ),
  //           Row(
  //             children: [
  //               Checkbox(checked: true, onChanged: (v) {}),
  //               SizedBox(
  //                 width: customSize.setWidth(5),
  //               ),
  //               const Text(
  //                 "IsActive",
  //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //               ),
  //               SizedBox(
  //                 width: customSize.setWidth(15),
  //               ),
  //               Checkbox(checked: false, onChanged: (v) {}),
  //               SizedBox(
  //                 width: customSize.setWidth(5),
  //               ),
  //               const Text(
  //                 "IsFeatured",
  //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //               ),
  //               SizedBox(
  //                 width: customSize.setWidth(100),
  //               ),
  //               Row(
  //                 mainAxisSize: MainAxisSize.min,
  //                 children: [
  //                   FilledButton(
  //                       child: SizedBox(
  //                           width: customSize.setWidth(50),
  //                           child: const Text("Create")),
  //                       onPressed: () {}),
  //                   SizedBox(
  //                     width: customSize.setWidth(10),
  //                   ),
  //                   OutlinedButton(
  //                       child: SizedBox(
  //                           width: customSize.setWidth(50),
  //                           child: const Text("Edit")),
  //                       onPressed: () {})
  //                 ],
  //               )
  //             ],
  //           ),
  //           SizedBox(
  //             height: customSize.setHeight(50),
  //           ),
  //         ],
  //       ),
  //     );
}
