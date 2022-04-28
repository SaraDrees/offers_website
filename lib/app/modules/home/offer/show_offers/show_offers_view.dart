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
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  // width: customSize.screenWidth / 6,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: customSize.setWidth(2)),
                                  child: const Text("data"),
                                  // child: const TextBox(
                                  //   decoration:
                                  //       BoxDecoration(border: Border()),
                                  //   placeholder: "offer name",
                                  // )
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
                                  // Combobox<String>(
                                  //     isExpanded: true,
                                  // onChanged: (i) {},
                                  // placeholder: const Text("Select"),
                                  // value: controller.selectedMainCategory,
                                  // items: const [
                                  //   ComboboxItem<String>(
                                  //       value: "444", child: Text("data1")),
                                  //   ComboboxItem<String>(
                                  //       value: "444", child: Text("data1")),
                                  //   ComboboxItem<String>(
                                  //       value: "444", child: Text("data1")),
                                  //   ComboboxItem<String>(
                                  //       value: "444", child: Text("data1")),
                                  // ]),
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
                                  // child: Combobox<String>(
                                  //     isExpanded: true,
                                  //     onChanged: (i) {},
                                  //     placeholder: const Text("Select"),
                                  //     value: controller.selectedMainCategory,
                                  //     items: const [
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //     ]),
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
                                  child: const Text("data")
                                  // child: Combobox<String>(
                                  //     isExpanded: true,
                                  //     onChanged: (i) {},
                                  //     placeholder: const Text("Select"),
                                  //     value: controller.selectedMainCategory,
                                  //     items: const [
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //     ]),
                                  ),
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
                                    // width: customSize.screenWidth / 6,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: customSize.setWidth(2)),
                                    child: const Text("data"))
                                // child: const TextBox(
                                //   decoration:
                                //       BoxDecoration(border: Border()),
                                //   placeholder: "offer code",
                                // )),
                              ],
                            ),
                          ),
                          const Flexible(child: SizedBox()),
                          // const Flexible(child: SizedBox()),
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
                                  child: const Text("data")
                                  // child: Combobox<String>(
                                  //     isExpanded: true,
                                  //     onChanged: (i) {},
                                  //     placeholder: const Text("Select"),
                                  //     value: controller.selectedMainCategory,
                                  //     items: const [
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //     ]),
                                  ),
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
                                  child: const Text("data")
                                  // child: Combobox<String>(
                                  //     isExpanded: true,
                                  //     onChanged: (i) {},
                                  //     placeholder: const Text("Select"),
                                  //     value: controller.selectedMainCategory,
                                  //     items: const [
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //     ]),
                                  ),
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
                                  child: const Text("data")
                                  // child: Combobox<String>(
                                  //     isExpanded: true,
                                  //     onChanged: (i) {},
                                  //     placeholder: const Text("Select"),
                                  //     value: controller.selectedMainCategory,
                                  //     items: const [
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //     ]),
                                  ),
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
                                  child: const Text("data")
                                  // child: Combobox<String>(
                                  //     isExpanded: true,
                                  //     onChanged: (i) {},
                                  //     placeholder: const Text("Select"),
                                  //     value: controller.selectedMainCategory,
                                  //     items: const [
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //     ]),
                                  ),
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
                                    // width: customSize.screenWidth / 6,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: customSize.setWidth(2)),
                                    child: const Text("data"))
                                // child: const TextBox(
                                //   decoration:
                                //       BoxDecoration(border: Border()),
                                //   // placeholder: "offer name",
                                // )),
                              ],
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
                                    // width: customSize.screenWidth / 6,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: customSize.setWidth(2)),
                                    child: const Text("data"))
                                // child: const TextBox(
                                //   decoration:
                                //       BoxDecoration(border: Border()),
                                //   // placeholder: "offer name",
                                // )),
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
                                  child: const Text("data")
                                  // child: Combobox<String>(
                                  //     isExpanded: true,
                                  //     onChanged: (i) {},
                                  //     placeholder: const Text("Select"),
                                  //     value: controller.selectedMainCategory,
                                  //     items: const [
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //       ComboboxItem<String>(
                                  //           value: "444", child: Text("data1")),
                                  //     ]),
                                  ),
                            ],
                          )),
                          Container(
                            margin:
                                EdgeInsets.only(top: customSize.setHeight(20)),
                            child: Flexible(
                                child: Row(
                              children: const [
                                // Checkbox(checked: true, onChanged: (i) {}),
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
                          // child: FilledButton(
                          //     style: ButtonStyle(
                          //         elevation: ButtonState.all(10)),
                          //     child: Row(
                          //       mainAxisSize: MainAxisSize.min,
                          //       children: [
                          //         const Icon(FluentIcons.search),
                          //         SizedBox(
                          //           width: customSize.setWidth(2),
                          //         ),
                          //         const Text("Search"),
                          //       ],
                          //     ),
                          //     onPressed: () {})),
                          SizedBox(
                            width: customSize.setWidth(10),
                          ),
                          ConstrainedBox(
                              constraints: BoxConstraints(
                                  minWidth: customSize.setWidth(30)),
                              child: OutlinedButton(
                                  // style: ButtonStyle(
                                  //     bordconster: ButtonState.all(
                                  //         BorderSide(color: Colors.blue))),
                                  //     backgroundColor:
                                  //         ButtonState.all(Colors.white),
                                  // elevation: ButtonState.all(10)),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.clear,
                                        // FluentIcons.clear,
                                        // color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: customSize.setWidth(2),
                                      ),
                                      const Text(
                                        "Reset",
                                        // style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {}))
                        ],
                      ),
                      SizedBox(height: customSize.setHeight(50)),
                      // _buildOfferTable(customSize),
                      SizedBox(height: customSize.setHeight(50)),
                    ],
                  ),
                ),
              )),
    );
  }

  // Widget _buildOfferTable(CustomSize customSize) => Padding(
  //       padding: EdgeInsets.symmetric(horizontal: customSize.setWidth(10)),
  //       child: Scrollbar(
  //           controller: controller.verticalScrollController,
  //           child: SingleChildScrollView(
  //             controller: controller.verticalScrollController,
  //             scrollDirection: Axis.vertical,
  //             primary: false,
  //             child: Scrollbar(
  //               controller: controller.horizontalScrollController,
  //               child: SingleChildScrollView(
  //                 controller: controller.horizontalScrollController,
  //                 scrollDirection: Axis.horizontal,
  //                 primary: false,
  //                 child: SizedBox(
  //                   width: customSize.screenWidth + customSize.setWidth(200),
  //                   child: Table(
  //                     columnWidths: const {
  //                       0: FlexColumnWidth(2),
  //                       9: FlexColumnWidth(2)
  //                     },
  //                     border: TableBorder.all(color: Colors.blue, width: 2),
  //                     children: [
  //                       TableRow(children: [
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horizontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "Actions",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                         )),
  //                         const Padding(
  //                           padding: EdgeInsets.all(8.0),
  //                           child: Text(
  //                             "Code",
  //                             style: TextStyle(color: Colors.blue),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                         ),
  //                         const Padding(
  //                           padding: EdgeInsets.all(8.0),
  //                           child: Text(
  //                             "Image",
  //                             style: TextStyle(color: Colors.blue),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                         ),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "Name",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "Category",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                         )),
  //                         const Padding(
  //                           padding: EdgeInsets.all(8.0),
  //                           child: Text(
  //                             "sub category",
  //                             style: TextStyle(color: Colors.blue),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                         ),
  //                         const Padding(
  //                           padding: EdgeInsets.all(8.0),
  //                           child: Text(
  //                             "shop name",
  //                             style: TextStyle(color: Colors.blue),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                         ),
  //                         const Padding(
  //                           padding: EdgeInsets.all(8.0),
  //                           child: Text(
  //                             "district",
  //                             style: TextStyle(color: Colors.blue),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                         ),
  //                         const Padding(
  //                           padding: EdgeInsets.all(8.0),
  //                           child: Text(
  //                             "offer type",
  //                             style: TextStyle(color: Colors.blue),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                         ),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "description",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "gender",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "old price",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "new price",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "Start date",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "end date",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "Remaining",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "Created at",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                         Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 vertical: customSize.setHeight(8),
  //                                 horconst izontal: customSize.setWidth(2)),
  //                             child: const Text(
  //                               "like count",
  //                               style: TextStyle(color: Colors.blue),
  //                               textAlign: TextAlign.center,
  //                             )),
  //                       ]),
  //                       TableRow(children: [
  //                         TableCell(
  //                             child: Padding(
  //                           padding: EdgeInsets.symmetric(
  //                               vertical: customSize.setHeight(10)),
  //                           child: Column(
  //                             children: [
  //                               Row(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceEvenly,
  //                                 children: [
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           style: ButtonStyle(
  //                                               backgroundColor:
  //                                                   ButtonState.all(
  //                                                       Colors.red)),
  //                                           child: const Text("Delete"),
  //                                           onPressed: () {})),
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           child: const Text("Edit"),
  //                                           onPressed: () {})),
  //                                 ],
  //                               ),
  //                               SizedBox(height: customSize.setHeight(10)),
  //                               Row(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceEvenly,
  //                                 children: [
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           style: ButtonStyle(
  //                                               backgroundColor:
  //                                                   ButtonState.all(
  //                                                       Colors.red)),
  //                                           child: const Text("active"),
  //                                           onPressed: () {})),
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           child: const Text("deActive"),
  //                                           onPressed: () {})),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         )),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                         const TableCell(child: SizedBox()),
  //                       ]),
  //                       TableRow(children: [
  //                         TableCell(
  //                             child: Padding(
  //                           padding: EdgeInsets.symmetric(
  //                               vertical: customSize.setHeight(10)),
  //                           child: Column(
  //                             children: [
  //                               Row(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceEvenly,
  //                                 children: [
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           style: ButtonStyle(
  //                                               backgroundColor:
  //                                                   ButtonState.all(
  //                                                       Colors.red)),
  //                                           child: const Text("Delete"),
  //                                           onPressed: () {})),
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           child: const Text("Edit"),
  //                                           onPressed: () {})),
  //                                 ],
  //                               ),
  //                               SizedBox(height: customSize.setHeight(10)),
  //                               Row(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceEvenly,
  //                                 children: [
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           style: ButtonStyle(
  //                                               backgroundColor:
  //                                                   ButtonState.all(
  //                                                       Colors.red)),
  //                                           child: const Text("active"),
  //                                           onPressed: () {})),
  //                                   ConstrainedBox(
  //                                       constraints: BoxConstraints(
  //                                           minWidth: customSize.setWidth(10)),
  //                                       child: FilledButton(
  //                                           child: const Text("deActive"),
  //                                           onPressed: () {})),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                         TableCell(
  //                             child: SizedBox(
  //                           height: customSize.setHeight(100),
  //                         )),
  //                       ])
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           )),
  //     );
}
