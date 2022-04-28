import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class ShowEmployeeView extends GetView<IdentityController> {
  const ShowEmployeeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
          textDirection: TextDirection.ltr, child: Text("data"));
    }
        // child: ScaffoldPage(
        //   content: Container(
        //       margin: EdgeInsets.symmetric(
        //           horizontal: customSize.setWidth(20),
        //           vertical: customSize.setHeight(20)),
        //       child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             SizedBox(
        //               width: customSize.screenWidth,
        //               // margin: EdgeInsets.symmetric(
        //               //     horizontal: customSize.setWidth(50)),
        //               // alignment: Alignment.topCenter,
        //               child: Text(
        //                 "Employees",
        //                 style: TextStyle(
        //                     fontSize: 25,
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.blue),
        //               ),
        //             ),
        //             SizedBox(
        //               height: customSize.setHeight(50),
        //             ),
        //             SizedBox(
        //               width: customSize.setWidth(70),
        //               child: FilledButton(
        //                   child: Padding(
        //                     padding: EdgeInsets.symmetric(
        //                         horizontal: customSize.setWidth(5),
        //                         vertical: customSize.setHeight(10)),
        //                     child: Row(
        //                       // mainAxisAlignment:
        //                       // MainAxisAlignment.spaceAround,
        //                       children: [
        //                         const Icon(FluentIcons.add),
        //                         SizedBox(
        //                           width: customSize.setWidth(5),
        //                         ),
        //                         const Text("add Employee"),
        //                       ],
        //                     ),
        //                   ),
        //                   onPressed: () {}),
        //             ),
        //             SizedBox(
        //               height: customSize.setHeight(50),
        //             ),
        //             _buildEmployeesTable(customSize)
        //           ])),
        // ));
        // }
        );
  }

  // Widget _buildEmployeesTable(CustomSize customSize) => StateBuilder<
  //         IdentityController>(
  //     id: "employeeTableId",
  //     // initialWidgetState: WidgetState.loaded,
  //     builder: (widgetState, controller) {
  //       return Scrollbar(
  //         controller: controller.horizontalScrollController,
  //         child: SingleChildScrollView(
  //           primary: false,
  //           controller: controller.horizontalScrollController,
  //           scrollDirection: Axis.horizontal,
  //           child: SizedBox(
  //             width: customSize.screenWidth,
  //             height: customSize.screenHeight / 2,
  //             child: ListView(
  //                 physics: const NeverScrollableScrollPhysics(),
  //                 children: [
  //                   Table(
  //                       border: TableBorder.all(color: Colors.blue),
  //                       defaultColumnWidth:
  //                           FixedColumnWidth(customSize.screenWidth / 5),
  //                       children: [
  //                         TableRow(
  //                             // decoration: BoxDecoration(color: Colors.blue),
  //                             children: [
  //                               TableCell(
  //                                   child: Text(
  //                                 "User Name",
  //                                 textAlign: TextAlign.center,
  //                                 style: TextStyle(
  //                                     color: Colors.blue, fontSize: 20),
  //                               )),
  //                               TableCell(
  //                                   child: Text(
  //                                 "is Active",
  //                                 textAlign: TextAlign.center,
  //                                 style: TextStyle(
  //                                     color: Colors.blue, fontSize: 20),
  //                               )),
  //                               TableCell(
  //                                   child: Text(
  //                                 "Roles",
  //                                 textAlign: TextAlign.center,
  //                                 style: TextStyle(
  //                                     color: Colors.blue, fontSize: 20),
  //                                 // ),
  //                               )),
  //                               TableCell(
  //                                   child: Text(
  //                                 "Phone",
  //                                 textAlign: TextAlign.center,
  //                                 style: TextStyle(
  //                                     color: Colors.blue, fontSize: 20),
  //                               )),
  //                               TableCell(
  //                                   child: Text(
  //                                 "Actions",
  //                                 textAlign: TextAlign.center,
  //                                 style: TextStyle(
  //                                     color: Colors.blue, fontSize: 20),
  //                               ))
  //                             ]),
  //                       ]),
  //                   Scrollbar(
  //                     controller: controller.verticalScrollController,
  //                     child: SingleChildScrollView(
  //                       primary: false,
  //                       controller: controller.verticalScrollController,
  //                       child: Table(
  //                         defaultColumnWidth:
  //                             FixedColumnWidth(customSize.screenWidth / 5),
  //                         border: TableBorder.all(color: Colors.blue),
  //                         children: List<TableRow>.generate(
  //                             controller.employees.length,
  //                             (index) => TableRow(
  //                                     decoration:
  //                                         BoxDecoration(border: Border.all()),
  //                                     children: [
  //                                       TableCell(
  //                                           verticalAlignment:
  //                                               TableCellVerticalAlignment
  //                                                   .middle,
  //                                           child: Text(
  //                                             controller
  //                                                 .employees[index].fullName,
  //                                             textAlign: TextAlign.center,
  //                                             style:
  //                                                 const TextStyle(fontSize: 18),
  //                                           )),
  //                                       TableCell(
  //                                           verticalAlignment:
  //                                               TableCellVerticalAlignment
  //                                                   .middle,
  //                                           child: Text(
  //                                             controller
  //                                                 .employees[index].isActive
  //                                                 .toString(),
  //                                             textAlign: TextAlign.center,
  //                                             style:
  //                                                 const TextStyle(fontSize: 18),
  //                                           )),
  //                                       TableCell(
  //                                         verticalAlignment:
  //                                             TableCellVerticalAlignment.middle,
  //                                         child: Padding(
  //                                           padding: EdgeInsets.symmetric(
  //                                               vertical:
  //                                                   customSize.setHeight(5),
  //                                               horizontal:
  //                                                   customSize.setWidth(5)),
  //                                           child: ListView.builder(
  //                                               shrinkWrap: true,
  //                                               physics:
  //                                                   const NeverScrollableScrollPhysics(),
  //                                               itemCount: controller
  //                                                   .employees[index]
  //                                                   .permissions
  //                                                   .length,
  //                                               itemBuilder: (_, i) => Text(
  //                                                   controller.employees[index]
  //                                                       .permissions[i].name)),
  //                                         ),
  //                                       ),
  //                                       TableCell(
  //                                           verticalAlignment:
  //                                               TableCellVerticalAlignment
  //                                                   .middle,
  //                                           child: Text(
  //                                             controller.employees[index].phone,
  //                                             textAlign: TextAlign.center,
  //                                           )),
  //                                       TableCell(
  //                                           verticalAlignment:
  //                                               TableCellVerticalAlignment
  //                                                   .middle,
  //                                           child: SizedBox(
  //                                             height: customSize.setHeight(80),
  //                                             // width: customSize.setWidth(50),
  //                                             child: Row(
  //                                               mainAxisAlignment:
  //                                                   MainAxisAlignment
  //                                                       .spaceAround,
  //                                               children: [
  //                                                 FilledButton(
  //                                                   child:
  //                                                       const Text("details"),
  //                                                   onPressed: () {},
  //                                                   style: ButtonStyle(
  //                                                       backgroundColor:
  //                                                           ButtonState.all(
  //                                                               Colors.red)),
  //                                                 ),
  //                                                 FilledButton(
  //                                                     child: const Text(
  //                                                         "deActivate"),
  //                                                     onPressed: () {})
  //                                               ],
  //                                             ),
  //                                           ))
  //                                     ])),
  //                       ),
  //                     ),
  //                   ),
  //                 ]),
  //           ),
  //         ),
  //         //   ),
  //         // ),
  //       );
  //     });
}
