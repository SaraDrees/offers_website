import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/districts/districts_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class DistrictsView extends GetView<DistrictsConroller> {
  const DistrictsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
          textDirection: TextDirection.ltr, child: Text("data"));
    });
  }
  //         child: ScaffoldPage(
  //           content: Container(
  //               margin: EdgeInsets.symmetric(
  //                   horizontal: customSize.setWidth(20),
  //                   vertical: customSize.setHeight(20)),
  //               child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     SizedBox(
  //                       width: customSize.screenWidth,
  //                       // margin: EdgeInsets.symmetric(
  //                       //     horizontal: customSize.setWidth(50)),
  //                       // alignment: Alignment.topCenter,
  //                       child: const Text(
  //                         "Districts",
  //                         style: TextStyle(
  //                             fontSize: 25,
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.blue),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: customSize.setHeight(50),
  //                     ),
  //                     SizedBox(
  //                       width: customSize.setWidth(70),
  //                       child: FilledButton(
  //                           child: Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 horizontal: customSize.setWidth(5),
  //                                 vertical: customSize.setHeight(10)),
  //                             child: Row(
  //                               // mainAxisAlignment:
  //                               // MainAxisAlignment.spaceAround,
  //                               children: [
  //                                 const Icon(FluentIcons.add),
  //                                 SizedBox(
  //                                   width: customSize.setWidth(5),
  //                                 ),
  //                                 const Text("add District"),
  //                               ],
  //                             ),
  //                           ),
  //                           onPressed: () {
  //                             showDialog(
  //                                 context: context,
  //                                 builder: (context) =>
  //                                     createAddDistrictDialog(customSize));
  //                           }),
  //                     ),
  //                     SizedBox(
  //                       height: customSize.setHeight(50),
  //                     ),
  //                     _buildDistrictTable(customSize)
  //                   ])),
  //         ));
  //   });
  // }

  // Widget _buildDistrictTable(CustomSize customSize) => SizedBox(
  //       width: customSize.screenWidth / 2,
  //       child: Table(
  //         border: TableBorder.all(color: Colors.blue),
  //         children: [
  //           const TableRow(children: [
  //             TableCell(
  //                 child: Text(
  //               "Id",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(color: Colors.blue, fontSize: 20),
  //             )),
  //             TableCell(
  //                 child: Text(
  //               "Name",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(color: Colors.blue, fontSize: 20),
  //             )),
  //           ]),
  //           TableRow(children: [
  //             SizedBox(
  //               height: customSize.setHeight(200),
  //             ),
  //             SizedBox(
  //               height: customSize.setHeight(200),
  //             ),
  //           ])
  //         ],
  //       ),
  //     );

  // Widget createAddDistrictDialog(CustomSize customSize) => Directionality(
  //       textDirection: TextDirection.ltr,
  //       child: ContentDialog(
  //         style: ContentDialogThemeData(barrierColor: Colors.blue),
  //         title: const Text("Create District"),
  //         constraints: BoxConstraints(
  //           minHeight: customSize.screenHeight / 2,
  //           maxHeight: customSize.screenHeight / 2 + customSize.setHeight(50),
  //           maxWidth: customSize.screenWidth / 2,
  //           minWidth: customSize.screenWidth / 2,
  //         ),
  //         actions: [
  //           SizedBox(
  //             width: customSize.setWidth(150),
  //           ),
  //           FilledButton(
  //               child: const Text(
  //                 "Close",
  //                 style: TextStyle(
  //                     color: Colors.blue, fontWeight: FontWeight.bold),
  //               ),
  //               style: ButtonStyle(
  //                   backgroundColor: ButtonState.all(Colors.white),
  //                   elevation: ButtonState.all(10)),
  //               onPressed: () {
  //                 Get.back();
  //               }),
  //           FilledButton(
  //               child: const Text(
  //                 "Create",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               style: ButtonStyle(elevation: ButtonState.all(10)),
  //               onPressed: () {
  //                 Get.back();
  //               }),
  //           // SizedBox(
  //           //   width: customSize.setWidth(50),
  //           // ),

  //           // ])
  //         ],
  //         content: Column(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Padding(
  //               padding:
  //                   EdgeInsets.symmetric(horizontal: customSize.setWidth(20)),
  //               child: Row(
  //                 mainAxisSize: MainAxisSize.min,
  //                 // mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 children: [
  //                   const Text(
  //                     "Name : ",
  //                     style:
  //                         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                   ),
  //                   SizedBox(
  //                     width: customSize.setWidth(10),
  //                   ),
  //                   Container(
  //                       // decoration: BoxDecoration(border: Border.all()),
  //                       width: customSize.screenWidth / 4,
  //                       padding: EdgeInsets.symmetric(
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const TextBox(
  //                         decoration: BoxDecoration(border: Border()),
  //                         placeholder: "District name",
  //                       ))
  //                 ],
  //               ),
  //             ),
  //             SizedBox(
  //               height: customSize.setHeight(50),
  //             ),
  //             Row(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 Checkbox(checked: true, onChanged: (v) {}),
  //                 SizedBox(
  //                   width: customSize.setWidth(5),
  //                 ),
  //                 const Text(
  //                   "IsActive",
  //                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
}
