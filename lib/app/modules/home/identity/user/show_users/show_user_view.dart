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
        child: Text("data"));
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
          child: Table(
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
                        child: const Text("data"))),
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
                        )),
              ])
            ],
          ),
        ),
      );
}
