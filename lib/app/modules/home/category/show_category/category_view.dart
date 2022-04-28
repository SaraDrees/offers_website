import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
          textDirection: TextDirection.ltr, child: Text("data"));
    });
  }
  //       child: ScaffoldPage(
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Container(
  //                   margin: EdgeInsets.symmetric(
  //                       horizontal: customSize.setWidth(50)),
  //                   alignment: Alignment.topCenter,
  //                   child: Text(
  //                     "Categories",
  //                     style: TextStyle(
  //                         fontSize: 30,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.blue),
  //                   ),
  //                 ),
  //                 Align(
  //                     alignment: Alignment.topRight,
  //                     child: Container(
  //                       decoration: BoxDecoration(
  //                           // color: const Color.fromARGB(255, 34, 180, 206),
  //                           // border: Border.all(color: Colors.blue, width: 1),
  //                           borderRadius: BorderRadius.circular(10)),
  //                       margin: EdgeInsets.symmetric(
  //                           horizontal: customSize.setWidth(10),
  //                           vertical: customSize.setHeight(15)),
  //                       // width: customSize.setWidth(120),
  //                       // height: customSize.setHeight(80),
  //                       child: FilledButton(
  //                           child: Padding(
  //                             padding: EdgeInsets.symmetric(
  //                                 horizontal: customSize.setWidth(10),
  //                                 vertical: customSize.setHeight(10)),
  //                             child: Row(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceAround,
  //                               children: [
  //                                 const Icon(FluentIcons.refresh),
  //                                 SizedBox(
  //                                   width: customSize.setWidth(5),
  //                                 ),
  //                                 const Text("Refresh"),
  //                               ],
  //                             ),
  //                           ),
  //                           onPressed: () {
  //                             controller.getCategories();
  //                             // showDialog(
  //                             //     context: context,
  //                             //     builder: (_) =>
  //                             //         createCategoryDialog(customSize));
  //                           }),
  //                     ))
  //               ],
  //             ),
  //             SizedBox(
  //               height: customSize.setHeight(100),
  //             ),
  //             StateBuilder<CategoryController>(
  //                 id: "categoryTreeId",
  //                 initialWidgetState: WidgetState.loaded,
  //                 builder: (wigetState, controller) {
  //                   return Visibility(
  //                       visible: (wigetState == WidgetState.loaded &&
  //                           controller.categoryList.isNotEmpty),
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                         children: [
  //                           SizedBox(
  //                               width: customSize.screenWidth / 2 - 100,
  //                               child: _buildCategoryTreeView(customSize)),
  //                           Divider(
  //                             size: customSize.screenHeight / 2 +
  //                                 customSize.setHeight(100),
  //                             direction: Axis.vertical,
  //                             style: const DividerThemeData(
  //                                 decoration:
  //                                     BoxDecoration(color: Colors.black)),
  //                           ),
  //                           _buildCategoryDetailsSection(customSize)
  //                         ],
  //                       ));
  //                 })
  //           ],
  //         ),
  //       ),
  //     );
  //   });
  // }

  // Widget _buildCategoryTreeView(CustomSize customSize) => SizedBox(
  //       height: customSize.screenHeight / 2,
  //       child: TreeView(
  //           items: List<TreeViewItem>.generate(
  //               controller.categoryList.length,
  //               (index) => TreeViewItem(
  //                   content: GestureDetector(
  //                     child: Text(controller.categoryList[index].name),
  //                     onTap: () => controller.upadteSelectedCategory(
  //                         controller.categoryList[index]),
  //                   ),
  //                   children: controller
  //                           .categoryList[index].subCategories.isNotEmpty
  //                       ? List<TreeViewItem>.generate(
  //                           controller.categoryList[index].subCategories.length,
  //                           (i) => TreeViewItem(
  //                                   content: GestureDetector(
  //                                 child: Text(controller.categoryList[index]
  //                                     .subCategories[i].name),
  //                                 onTap: () => controller
  //                                     .upadteSelectedCategory(controller
  //                                         .categoryList[index]
  //                                         .subCategories[i]),
  //                               )))
  //                       : []))),
  //     );
  // // }),
  // // );

  // Widget _buildCategoryDetailsSection(CustomSize customSize) => GetBuilder(
  //     init: controller,
  //     builder: (cntr) {
  //       return AnimatedContainer(
  //         duration: const Duration(milliseconds: 300),
  //         height: customSize.screenHeight / 2,
  //         // width: controller.selectedCategory.value.id == "-1"
  //         width:
  //             !controller.expanded.value ? 0 : customSize.screenWidth / 2 - 100,
  //         child: !controller.expanded.value
  //             ? const SizedBox()
  //             : StateBuilder<CategoryController>(
  //                 id: "categoryInfoId",
  //                 initialWidgetState: WidgetState.loaded,
  //                 builder: (widgetState, controller) {
  //                   return SingleChildScrollView(
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Text(
  //                           "Category Details",
  //                           style: TextStyle(color: Colors.blue, fontSize: 20),
  //                         ),
  //                         Align(
  //                           alignment: Alignment.topRight,
  //                           child: Row(
  //                             mainAxisSize: MainAxisSize.min,
  //                             children: [
  //                               Obx(() {
  //                                 return FilledButton(
  //                                   child: SizedBox(
  //                                       width: customSize.setWidth(20),
  //                                       child: Text(
  //                                         controller.readyToEdit.value
  //                                             ? "done"
  //                                             : "Edit",
  //                                         style: const TextStyle(
  //                                           fontSize: 18,
  //                                         ),
  //                                       )),
  //                                   onPressed: () {
  //                                     !controller.readyToEdit.value
  //                                         ? controller.readyToEditFunc()
  //                                         : controller.editCategoryInfo();
  //                                     //     !controller.readyToEdit.value;
  //                                   },
  //                                 );
  //                               }),
  //                               SizedBox(
  //                                 width: customSize.setWidth(5),
  //                               ),
  //                               FilledButton(
  //                                   child: SizedBox(
  //                                       width: customSize.setWidth(20),
  //                                       child: const Text(
  //                                         "Delete",
  //                                         style: TextStyle(
  //                                           fontSize: 18,
  //                                         ),
  //                                       )),
  //                                   onPressed: () {
  //                                     controller.deleteCategory();
  //                                   })
  //                             ],
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: customSize.screenHeight / 2,
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             // mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                             children: [
  //                               Visibility(
  //                                 visible: controller
  //                                     .selectedCategory.value.isBranch,
  //                                 child: Row(
  //                                   children: [
  //                                     const Text("Parent  : ",
  //                                         style: TextStyle(fontSize: 20)),
  //                                     Text(
  //                                         controller.selectedCategory.value
  //                                                 .mainCategory?.name ??
  //                                             "",
  //                                         style: const TextStyle(fontSize: 18)),
  //                                   ],
  //                                 ),
  //                               ),
  //                               Row(
  //                                 children: [
  //                                   const Text("Name  : ",
  //                                       style: TextStyle(fontSize: 20)),
  //                                   Obx(() {
  //                                     return Flexible(
  //                                       child: TextBox(
  //                                           controller: TextEditingController(
  //                                               text: controller
  //                                                   .selectedCategory
  //                                                   .value
  //                                                   .name),
  //                                           showCursor:
  //                                               controller.readyToEdit.value,
  //                                           enabled:
  //                                               controller.readyToEdit.value,
  //                                           decoration: BoxDecoration(
  //                                               border: controller
  //                                                       .readyToEdit.value
  //                                                   ? Border.all(
  //                                                       color: Colors.blue)
  //                                                   : null),
  //                                           // placeholder: controller
  //                                           //     .selectedCategory.value.name,
  //                                           placeholderStyle: TextStyle(
  //                                               fontSize: 18,
  //                                               color:
  //                                                   controller.readyToEdit.value
  //                                                       ? Colors.grey
  //                                                       : Colors.black),
  //                                           style: const TextStyle(
  //                                               fontSize: 18,
  //                                               color: Colors.black),
  //                                           onChanged: (text) => controller
  //                                               .tempCategory!.name = text
  //                                           // controller
  //                                           //     .selectedCategory.value.name = text,
  //                                           ),
  //                                     );
  //                                   }),
  //                                   const Flexible(child: SizedBox())
  //                                 ],
  //                               ),
  //                               SizedBox(height: customSize.setHeight(20)),
  //                               Row(
  //                                 children: [
  //                                   const Text("isActive  : ",
  //                                       style: TextStyle(fontSize: 20)),
  //                                   Checkbox(
  //                                       checked: controller
  //                                           .selectedCategory.value.isActive,
  //                                       onChanged: (i) =>
  //                                           controller.editIsActive(i!))

  //                                   // Text(
  //                                   //     "${controller.selectedCategory.value.isActive}",
  //                                   //     style: const TextStyle(fontSize: 18)),
  //                                 ],
  //                               ),
  //                               Row(
  //                                 children: [
  //                                   const Text("Category Icon  : ",
  //                                       style: TextStyle(fontSize: 20)),
  //                                   SizedBox(
  //                                     // decoration:
  //                                     //     BoxDecoration(border: Border.all()),
  //                                     height: customSize.setHeight(200),
  //                                     width: customSize.screenWidth / 4,
  //                                     child: Image.file(File(controller
  //                                         .selectedCategory.value.image)),
  //                                     // child:  const Icon(
  //                                     //   FluentIcons.image_pixel,
  //                                     // ),
  //                                   )
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         )
  //                       ],
  //                     ),
  //                   );
  //                 }),
  //       );
  //     });

  // Widget createCategoryDialog(CustomSize customSize) => Directionality(
  //       textDirection: TextDirection.ltr,
  //       child: ContentDialog(
  //         style: ContentDialogThemeData(barrierColor: Colors.blue),
  //         title: const Text("Create Category"),
  //         constraints: BoxConstraints(
  //           minHeight: customSize.screenHeight / 2,
  //           maxHeight: customSize.screenHeight / 2 + customSize.setHeight(150),
  //           maxWidth: customSize.screenWidth / 2,
  //           minWidth: customSize.screenWidth / 2,
  //         ),
  //         actions: [
  //           SizedBox(
  //             width: customSize.setWidth(150),
  //           ),
  //           FilledButton(
  //               child: Text(
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
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: [
  //                 Flexible(
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       const Text(
  //                         "Parent",
  //                         style: TextStyle(
  //                             fontSize: 20, fontWeight: FontWeight.bold),
  //                       ),
  //                       SizedBox(
  //                         height: customSize.setHeight(5),
  //                       ),
  //                       ConstrainedBox(
  //                         constraints: BoxConstraints(
  //                             minWidth: customSize.screenWidth / 6,
  //                             maxWidth: customSize.screenWidth / 6),
  //                         child: Combobox<String>(
  //                             isExpanded: true,
  //                             placeholder: const Text("Select"),
  //                             value: controller.categoryItemValue,
  //                             items: const [
  //                               ComboboxItem<String>(
  //                                   value: "ffffff", child: Text("data1")),
  //                               ComboboxItem<String>(
  //                                   value: "ffffff", child: Text("data1")),
  //                               ComboboxItem<String>(
  //                                   value: "ffffff", child: Text("data1")),
  //                               ComboboxItem<String>(
  //                                   value: "ffffff", child: Text("data1")),
  //                             ]),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 Flexible(
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       const Text(
  //                         "Name",
  //                         style: TextStyle(
  //                             fontSize: 20, fontWeight: FontWeight.bold),
  //                       ),
  //                       SizedBox(
  //                         height: customSize.setHeight(5),
  //                       ),
  //                       Container(
  //                           decoration: BoxDecoration(border: Border.all()),
  //                           width: customSize.screenWidth / 6,
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: customSize.setWidth(2)),
  //                           child: const TextBox(
  //                             decoration: BoxDecoration(border: Border()),
  //                             placeholder: "category name",
  //                           )),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //             SizedBox(
  //               height: customSize.setHeight(20),
  //             ),
  //             Container(
  //               margin:
  //                   EdgeInsets.symmetric(horizontal: customSize.setWidth(15)),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   const Text(
  //                     "Icon",
  //                     style:
  //                         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //                   ),
  //                   SizedBox(
  //                     height: customSize.setHeight(10),
  //                   ),
  //                   FilledButton(
  //                       child: const Text(
  //                         "choose File",
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       onPressed: () {}),
  //                   SizedBox(
  //                     height: customSize.setHeight(30),
  //                   ),
  //                   Row(
  //                     mainAxisSize: MainAxisSize.min,
  //                     children: [
  //                       Checkbox(checked: true, onChanged: (v) {}),
  //                       SizedBox(
  //                         width: customSize.setWidth(5),
  //                       ),
  //                       const Text(
  //                         "IsActive",
  //                         style: TextStyle(
  //                             fontSize: 18, fontWeight: FontWeight.bold),
  //                       )
  //                     ],
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
}
