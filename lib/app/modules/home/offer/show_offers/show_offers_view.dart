import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/offer/show_offers/show_offers_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class ShowOffersView extends GetView<ShowOffersController> {
  const ShowOffersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ScreenSizer(
          builder: (customSize) => Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: customSize.setWidth(10),
                    vertical: customSize.setHeight(50)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: customSize.setHeight(5),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(2)),
                                  child: const Text("data")
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Category",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")
                                  ),
                            ],
                          )),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "sub Category",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")
                                  ),
                            ],
                          )),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Shop",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")),
                            ],
                          )),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Code",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: customSize.setHeight(5),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: customSize.setWidth(2)),
                                    child: const Text("data"))],
                            ),
                          ),
                          const Flexible(child: SizedBox()),
                        ],
                      ),
                      SizedBox(
                        height: customSize.setHeight(50),
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "District",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")),
                            ],
                          )),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Offer type",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")),
                            ],
                          )),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Gender",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")),
                            ],
                          )),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Date",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")),
                            ],
                          )),
                          const Flexible(child: SizedBox()),
                          const Flexible(child: SizedBox()),
                        ],
                      ),
                      SizedBox(
                        height: customSize.setHeight(50),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Min price",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: customSize.setHeight(5),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: customSize.setWidth(2)),
                                    child: const Text("data"))],
                            ),
                          ),
                          SizedBox(
                            width: customSize.setWidth(5),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Max price",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: customSize.setHeight(5),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: customSize.setWidth(2)),
                                    child: const Text("data"))
                              ],
                            ),
                          ),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Sort by",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: customSize.setHeight(5),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(5)),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text("data")),
                            ],
                          )),
                          Container(
                            margin:
                                EdgeInsets.only(top: customSize.setHeight(20)),
                            child: const Flexible(
                                child: Row(
                              children:[
                                Text("out of stock"),
                              ],
                            )),
                          ),
                          const Flexible(child: SizedBox()),
                          const Flexible(child: SizedBox()),
                        ],
                      ),
                      SizedBox(height: customSize.setHeight(50)),
                      Row(
                        children: [
                          ConstrainedBox(
                              constraints: BoxConstraints(
                                  minWidth: customSize.setWidth(30)),
                              child: const Text("data")),
                          SizedBox(
                            width: customSize.setWidth(10),
                          ),
                          ConstrainedBox(
                              constraints: BoxConstraints(
                                  minWidth: customSize.setWidth(30)),
                              child: OutlinedButton(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.clear
                                      ),
                                      SizedBox(
                                        width: customSize.setWidth(2),
                                      ),
                                      const Text(
                                        "Reset",
                                      ),
                                    ],
                                  ),
                                  onPressed: () {}))
                        ],
                      ),
                      SizedBox(height: customSize.setHeight(50)),
                      SizedBox(height: customSize.setHeight(50)),
                    ],
                  ),
                ),
              )),
    );
  }

 }
