import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/show_shops/shop_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
// import 'package:offers_website/app/moduless/offer/shop/show_shops/shop_controller.dart';

class ShopsView extends GetView<ShopsController> {
  const ShopsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
        textDirection: TextDirection.ltr,
        child: Text("data"),
        // child: ScaffoldPage(
        //   content: Container(
        //     margin: EdgeInsets.symmetric(horizontal: customSize.setWidth(20)),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         SizedBox(
        //           width: customSize.screenWidth,
        //           // margin: EdgeInsets.symmetric(
        //           //     horizontal: customSize.setWidth(50)),
        //           // alignment: Alignment.topCenter,
        //           child: const Text(
        //             "View Shops",
        //             style: TextStyle(
        //                 fontSize: 25,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.blue),
        //           ),
        //         ),
        //         SizedBox(
        //           height: customSize.setHeight(50),
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Flexible(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   const Text(
        //                     "Name",
        //                     style: TextStyle(
        //                         fontSize: 20, fontWeight: FontWeight.bold),
        //                   ),
        //                   SizedBox(
        //                     height: customSize.setHeight(5),
        //                   ),
        //                   const TextBox(
        //                     decoration: BoxDecoration(border: Border()),
        //                     placeholder: "category name",
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Flexible(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   const Text(
        //                     "Parent",
        //                     style: TextStyle(
        //                         fontSize: 20, fontWeight: FontWeight.bold),
        //                   ),
        //                   SizedBox(
        //                     height: customSize.setHeight(5),
        //                   ),
        //                   ConstrainedBox(
        //                     constraints: BoxConstraints(
        //                         minWidth: customSize.screenWidth / 6,
        //                         maxWidth: customSize.screenWidth / 6),
        //                     child: Combobox<String>(
        //                         isExpanded: true,
        //                         placeholder: const Text("Select"),
        //                         value: controller.date,
        //                         items: const [
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                         ]),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Flexible(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   const Text(
        //                     "Parent",
        //                     style: TextStyle(
        //                         fontSize: 20, fontWeight: FontWeight.bold),
        //                   ),
        //                   SizedBox(
        //                     height: customSize.setHeight(5),
        //                   ),
        //                   ConstrainedBox(
        //                     constraints: BoxConstraints(
        //                         minWidth: customSize.screenWidth / 6,
        //                         maxWidth: customSize.screenWidth / 6),
        //                     child: Combobox<String>(
        //                         isExpanded: true,
        //                         placeholder: const Text("Select"),
        //                         value: controller.district,
        //                         items: const [
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                         ]),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Flexible(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   const Text(
        //                     "Parent",
        //                     style: TextStyle(
        //                         fontSize: 20, fontWeight: FontWeight.bold),
        //                   ),
        //                   SizedBox(
        //                     height: customSize.setHeight(5),
        //                   ),
        //                   ConstrainedBox(
        //                     constraints: BoxConstraints(
        //                         minWidth: customSize.screenWidth / 6,
        //                         maxWidth: customSize.screenWidth / 6),
        //                     child: Combobox<String>(
        //                         isExpanded: true,
        //                         placeholder: const Text("Select"),
        //                         value: controller.category,
        //                         items: const [
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                           ComboboxItem<String>(
        //                               value: "ffffff", child: Text("data1")),
        //                         ]),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: customSize.setHeight(50),
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Row(
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 Checkbox(
        //                     checked: controller.usersWhoShowedOurShops,
        //                     onChanged: (v) {}),
        //                 SizedBox(
        //                   width: customSize.setWidth(5),
        //                 ),
        //                 const Text(
        //                   "user how show our shops",
        //                   style: TextStyle(
        //                       fontSize: 18, fontWeight: FontWeight.bold),
        //                 )
        //               ],
        //             ),
        //             // SizedBox(
        //             //   width: customSize.setWidth(80),
        //             // ),
        //             Row(
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 Checkbox(
        //                     checked: controller.isFavorite,
        //                     onChanged: (v) {}),
        //                 SizedBox(
        //                   width: customSize.setWidth(5),
        //                 ),
        //                 const Text(
        //                   "Is Favorite",
        //                   style: TextStyle(
        //                       fontSize: 18, fontWeight: FontWeight.bold),
        //                 )
        //               ],
        //             ),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 const Text(
        //                   "Sorted By",
        //                   style: TextStyle(
        //                       fontSize: 20, fontWeight: FontWeight.bold),
        //                 ),
        //                 SizedBox(
        //                   height: customSize.setHeight(5),
        //                 ),
        //                 ConstrainedBox(
        //                   constraints: BoxConstraints(
        //                       minWidth: customSize.screenWidth / 6,
        //                       maxWidth: customSize.screenWidth / 6),
        //                   child: Combobox<String>(
        //                       isExpanded: true,
        //                       placeholder: const Text("Select"),
        //                       value: controller.category,
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
        //               ],
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: customSize.setHeight(50),
        //         ),
        //         Row(
        //           children: [
        //             ConstrainedBox(
        //                 constraints:
        //                     BoxConstraints(minWidth: customSize.setWidth(30)),
        //                 child: FilledButton(
        //                     style:
        //                         ButtonStyle(elevation: ButtonState.all(10)),
        //                     child: Row(
        //                       mainAxisSize: MainAxisSize.min,
        //                       children: [
        //                         const Icon(FluentIcons.search),
        //                         SizedBox(
        //                           width: customSize.setWidth(2),
        //                         ),
        //                         const Text("Search"),
        //                       ],
        //                     ),
        //                     onPressed: () {})),
        //             SizedBox(
        //               width: customSize.setWidth(10),
        //             ),
        //             ConstrainedBox(
        //                 constraints:
        //                     BoxConstraints(minWidth: customSize.setWidth(30)),
        //                 child: FilledButton(
        //                     style: ButtonStyle(
        //                         border: ButtonState.all(
        //                             const BorderSide(color: Colors.blue)),
        //                         backgroundColor:
        //                             ButtonState.all(Colors.white),
        //                         elevation: ButtonState.all(10)),
        //                     child: Row(
        //                       mainAxisSize: MainAxisSize.min,
        //                       children: [
        //                         Icon(
        //                           FluentIcons.clear,
        //                           color: Colors.blue,
        //                         ),
        //                         SizedBox(
        //                           width: customSize.setWidth(2),
        //                         ),
        //                         const Text(
        //                           "Reset",
        //                           style: TextStyle(color: Colors.blue),
        //                         ),
        //                       ],
        //                     ),
        //                     onPressed: () {}))
        //           ],
        //         ),
        //         SizedBox(
        //           height: customSize.setHeight(50),
        //         ),
        //         _buildShopTable(customSize)
        //       ],
        //     ),
        //   ),
        // ));
      );
    });
  }

  // Widget _buildShopTable(CustomSize customSize) {
  //   return Scrollbar(
  //     controller: controller.verticalScrollController,
  //     child: SingleChildScrollView(
  //       primary: false,
  //       controller: controller.verticalScrollController,
  //       child: Scrollbar(
  //         controller: controller.horizontalScrollController,
  //         child: SingleChildScrollView(
  //           primary: false,
  //           controller: controller.horizontalScrollController,
  //           scrollDirection: Axis.horizontal,
  //           child: SizedBox(
  //             width: customSize.screenWidth + customSize.setWidth(50),
  //             child: Table(
  //               columnWidths: const {
  //                 0: FlexColumnWidth(2),
  //                 9: FlexColumnWidth(2)
  //               },
  //               border: TableBorder.all(color: Colors.blue, width: 2),
  //               children: [
  //                 TableRow(children: [
  //                   const Padding(
  //                     padding: EdgeInsets.all(8.0),
  //                     child: Text(
  //                       "Image",
  //                       style: TextStyle(color: Colors.blue),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                   ),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "Name",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "Category",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "Description",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "Phone",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "Address",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "District",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "User Name",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "Created at",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                   Padding(
  //                       padding: EdgeInsets.symmetric(
  //                           vertical: customSize.setHeight(8),
  //                           horizontal: customSize.setWidth(2)),
  //                       child: const Text(
  //                         "Actions",
  //                         style: TextStyle(color: Colors.blue),
  //                         textAlign: TextAlign.center,
  //                       )),
  //                 ]),
  //                 TableRow(children: [
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   const TableCell(child: SizedBox()),
  //                   TableCell(
  //                       child: Padding(
  //                     padding: EdgeInsets.symmetric(
  //                         vertical: customSize.setHeight(5)),
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                       children: [
  //                         ConstrainedBox(
  //                             constraints: BoxConstraints(
  //                                 minWidth: customSize.setWidth(10)),
  //                             child: FilledButton(
  //                                 style: ButtonStyle(
  //                                     backgroundColor:
  //                                         ButtonState.all(Colors.red)),
  //                                 child: const Text("Delete"),
  //                                 onPressed: () {})),
  //                         ConstrainedBox(
  //                             constraints: BoxConstraints(
  //                                 minWidth: customSize.setWidth(10)),
  //                             child: FilledButton(
  //                                 child: const Text("Edit"), onPressed: () {})),
  //                       ],
  //                     ),
  //                   )),
  //                 ]),
  //                 TableRow(children: [
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: SizedBox(
  //                     height: customSize.setHeight(100),
  //                   )),
  //                   TableCell(
  //                       child: Padding(
  //                     padding: EdgeInsets.symmetric(
  //                         vertical: customSize.setHeight(5)),
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                       children: [
  //                         ConstrainedBox(
  //                             constraints: BoxConstraints(
  //                                 minWidth: customSize.setWidth(10)),
  //                             child: FilledButton(
  //                                 style: ButtonStyle(
  //                                     backgroundColor:
  //                                         ButtonState.all(Colors.red)),
  //                                 child: const Text("Delete"),
  //                                 onPressed: () {})),
  //                         ConstrainedBox(
  //                             constraints: BoxConstraints(
  //                                 minWidth: customSize.setWidth(10)),
  //                             child: FilledButton(
  //                                 child: const Text("Edit"), onPressed: () {})),
  //                       ],
  //                     ),
  //                   )),
  //                 ])
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
