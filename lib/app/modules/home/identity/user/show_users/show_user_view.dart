import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/user/show_users/show_user_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

// ignore: must_be_immutable
class ShowUserView extends GetView<ShowUserController> {
  int? index;
  ShowUserView({this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
        textDirection: TextDirection.ltr,
        child: Text("data"),
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
        //                 index == 1 ? "View Users" : "User How Show our Shops",
        //                 style: TextStyle(
        //                     fontSize: 25,
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.blue),
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
        //                   "user how show our shops",
        //                   style: TextStyle(
        //                       fontSize: 18, fontWeight: FontWeight.bold),
        //                 )
        //               ],
        //             ),
        //             // SizedBox(
        //             //   width: customSize.setWidth(80),
        //             // ),

        //             SizedBox(
        //               height: customSize.setHeight(50),
        //             ),
        //             Row(
        //               children: [
        //                 ConstrainedBox(
        //                     constraints: BoxConstraints(
        //                         minWidth: customSize.setWidth(30)),
        //                     child: FilledButton(
        //                         style: ButtonStyle(
        //                             elevation: ButtonState.all(10)),
        //                         child: Row(
        //                           mainAxisSize: MainAxisSize.min,
        //                           children: [
        //                             const Icon(FluentIcons.search),
        //                             SizedBox(
        //                               width: customSize.setWidth(2),
        //                             ),
        //                             const Text("Search"),
        //                           ],
        //                         ),
        //                         onPressed: () {})),
        //                 SizedBox(
        //                   width: customSize.setWidth(10),
        //                 ),
        //                 ConstrainedBox(
        //                     constraints: BoxConstraints(
        //                         minWidth: customSize.setWidth(30)),
        //                     child: FilledButton(
        //                         style: ButtonStyle(
        //                             border: ButtonState.all(
        //                                 BorderSide(color: Colors.blue)),
        //                             backgroundColor:
        //                                 ButtonState.all(Colors.white),
        //                             elevation: ButtonState.all(10)),
        //                         child: Row(
        //                           mainAxisSize: MainAxisSize.min,
        //                           children: [
        //                             Icon(
        //                               FluentIcons.clear,
        //                               color: Colors.blue,
        //                             ),
        //                             SizedBox(
        //                               width: customSize.setWidth(2),
        //                             ),
        //                             Text(
        //                               "Reset",
        //                               style: TextStyle(color: Colors.blue),
        //                             ),
        //                           ],
        //                         ),
        //                         onPressed: () {}))
        //               ],
        //             ),
        //             SizedBox(
        //               height: customSize.setHeight(50),
        //             ),
        //             index == 1
        //                 ? _buildUserTable(customSize)
        //                 : _buildUserShowOurShopTable(customSize)
        //           ])),
        // )
      );
    });
  }

  Widget _buildUserTable(CustomSize customSize) => Container(
        margin: EdgeInsets.symmetric(horizontal: customSize.setWidth(10)),
        child: Table(border: TableBorder.all(color: Colors.blue), children: [
          TableRow(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "User Name",
                style: TextStyle(color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: customSize.setHeight(8),
                    horizontal: customSize.setWidth(2)),
                child: const Text(
                  "Full Name",
                  style: TextStyle(color: Colors.blue),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: customSize.setHeight(8),
                    horizontal: customSize.setWidth(2)),
                child: const Text(
                  "Phone",
                  style: TextStyle(color: Colors.blue),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: customSize.setHeight(8),
                    horizontal: customSize.setWidth(2)),
                child: const Text(
                  "Birthday",
                  style: TextStyle(color: Colors.blue),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: customSize.setHeight(8),
                    horizontal: customSize.setWidth(2)),
                child: const Text(
                  "Shop Name",
                  style: TextStyle(color: Colors.blue),
                  textAlign: TextAlign.center,
                )),
            const SizedBox()
          ]),
          TableRow(
            children: [
              TableCell(
                  child: SizedBox(
                height: customSize.setHeight(100),
              )),
              TableCell(
                  child: SizedBox(
                height: customSize.setHeight(100),
              )),
              TableCell(
                  child: SizedBox(
                height: customSize.setHeight(100),
              )),
              TableCell(
                  child: SizedBox(
                height: customSize.setHeight(100),
              )),
              TableCell(
                  child: SizedBox(
                height: customSize.setHeight(100),
              )),
              TableCell(
                  child: SizedBox(
                height: customSize.setHeight(100),
              )),
            ],
          )
        ]),
      );

  Widget _buildUserShowOurShopTable(CustomSize customSize) =>
      SingleChildScrollView(
        child: SizedBox(
          width: customSize.screenWidth + customSize.setWidth(150),
          // margin: EdgeInsets.symmetric(horizontal: customSize.setWidth(5)),
          child: Table(
            // defaultColumnWidth: const FixedColumnWidth(100),
            columnWidths: const {
              10: FlexColumnWidth(2),
            },
            border: TableBorder.all(color: Colors.blue, width: 2),
            children: [
              TableRow(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "User Name",
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "phone",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Shop Name",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Category",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Shop Address",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Offer Name",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Offer Description",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Price or Percentage",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Offer Date",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Status",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: customSize.setHeight(8),
                        horizontal: customSize.setWidth(2)),
                    child: const Text(
                      "Actions",
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center,
                    )),
              ]),
              TableRow(children: [
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                const TableCell(child: SizedBox()),
                TableCell(
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: customSize.setHeight(5)),
                        child: const Text("data")
                        //   Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       ConstrainedBox(
                        //           constraints:
                        //               BoxConstraints(minWidth: customSize.setWidth(5)),
                        //           child: FilledButton(
                        //               // style: ButtonStyle(
                        //               //     backgroundColor: ButtonState.all(Colors.red)),
                        //               child: const Text("Approved"),
                        //               onPressed: () {})),
                        //       ConstrainedBox(
                        //           constraints:
                        //               BoxConstraints(minWidth: customSize.setWidth(5)),
                        //           child: FilledButton(
                        //               child: const Text("Seen"), onPressed: () {})),
                        //     ],
                        //   ),
                        )),
              ]),
              TableRow(children: [
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: SizedBox(
                  height: customSize.setHeight(100),
                )),
                TableCell(
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: customSize.setHeight(5)),
                        child: const Text("data")
                        // Row(
                        //   mainAxisSize: MainAxisSize.min,
                        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     // ConstrainedBox(
                        //     //     constraints:
                        //     //         BoxConstraints(minWidth: customSize.setWidth(5)),
                        //     //     child: FilledButton(
                        //     //         style: ButtonStyle(
                        //     //             backgroundColor: ButtonState.all(Colors.red)),
                        //     // child:
                        //     Text("Delete"),
                        //     // onPressed: () {})),
                        //     // ConstrainedBox(
                        //     //     constraints:
                        //     //         BoxConstraints(minWidth: customSize.setWidth(5)),
                        //     //     child: FilledButton(
                        //     //         child:
                        //     Text("Edit"),
                        //     // onPressed: () {})),
                        //   ],
                        // ),
                        )),
              ])
            ],
          ),
        ),
      );
}
