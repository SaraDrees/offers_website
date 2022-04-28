import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/widget_state.dart';

class AddCategoryView extends GetView<AddCategoryController> {
  const AddCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(
      builder: (customSize) => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: customSize.setWidth(20),
            vertical: customSize.setHeight(80)),
        child: StateBuilder<AddCategoryController>(
            id: "addCategoryId",
            disableState: true,
            initialWidgetState: WidgetState.loaded,
            builder: (widgetState, controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("data")
                  // Row(
                  //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   // mainAxisAlignment: MainAxisAlignment.center,

                  //   children: [
                  //     Flexible(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           const Text(
                  //             "Parent",
                  //             style: TextStyle(
                  //                 fontSize: 20, fontWeight: FontWeight.bold),
                  //           ),
                  //           SizedBox(
                  //             height: customSize.setHeight(5),
                  //           ),
                  //           ConstrainedBox(
                  //             constraints: BoxConstraints(
                  //                 minWidth: customSize.screenWidth / 4,
                  //                 maxWidth: customSize.screenWidth / 4),
                  //             child: widgetState == WidgetState.loading &&
                  //                     !controller.isAddRequest
                  //                 ? const Loading()
                  //                 : GetBuilder<AddCategoryController>(
                  //                     id: "parentCategoryId",
                  //                     init: controller,
                  //                     builder: (controller) {
                  //                       return const Text("data");
                  //                       // return dropD<Category>(
                  //                       //     isExpanded: true,
                  //                       //     onChanged: (i) {
                  //                       //       // controller.categoryItemValue = i;
                  //                       //       controller.editSelectedParent(i!);
                  //                       //     },
                  //                       //     placeholder: const Text("Select"),
                  //                       //     value: controller.categoryItemValue,
                  //                       //     items: List<
                  //                       //             ComboboxItem<
                  //                       //                 Category>>.generate(
                  //                       //         controller
                  //                       //             .parentCategory.length,
                  //                       //         (index) => ComboboxItem(
                  //                       //               child: Text(controller
                  //                       //                   .parentCategory[index]
                  //                       //                   .name),
                  //                       //               value: controller
                  //                       //                       .parentCategory[
                  //                       //                   index],
                  //                       //             ))
                  //                       //     //  const [
                  //                       //     //   // ComboboxItem<Category>(
                  //                       //     //   //     value: "444", child: Text("data1")),
                  //                       //     //   ComboboxItem<String>(
                  //                       //     //       value: "444", child: Text("data1")),
                  //                       //     //   ComboboxItem<String>(
                  //                       //     //       value: "444", child: Text("data1")),
                  //                       //     //   ComboboxItem<String>(
                  //                       //     //       value: "444", child: Text("data1")),
                  //                       //     // ]
                  //                       //     );
                  //                     }),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: customSize.setWidth(50),
                  //     ),
                  //     Flexible(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           const Text(
                  //             "Name",
                  //             style: TextStyle(
                  //                 fontSize: 20, fontWeight: FontWeight.bold),
                  //           ),
                  //           SizedBox(
                  //             height: customSize.setHeight(5),
                  //           ),
                  //           Container(
                  //               // decoration: BoxDecoration(border: Border.all()),
                  //               width: customSize.screenWidth / 4,
                  //               padding: EdgeInsets.symmetric(
                  //                   horizontal: customSize.setWidth(2)),
                  //               child: TextFormField(
                  //                 controller: TextEditingController(
                  //                     text: controller.name ?? ""),
                  //                 // decoration:
                  //                 //     const BoxDecoration(border: Border()),
                  //                 // : "category name",
                  //                 onChanged: (i) {
                  //                   controller.name = i;
                  //                 },
                  //               )),
                  //         ],
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: customSize.setHeight(100),
                  // ),
                  // Container(
                  //   width: customSize.screenWidth / 2,
                  //   margin: EdgeInsets.symmetric(
                  //       horizontal: customSize.setWidth(15)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           const Text(
                  //             "Icon",
                  //             style: TextStyle(
                  //                 fontSize: 18, fontWeight: FontWeight.bold),
                  //           ),
                  //           SizedBox(
                  //             height: customSize.setHeight(10),
                  //           ),
                  //           // FilledButton(
                  //           //     child: const Text(
                  //           //       "choose File",
                  //           //       style: TextStyle(fontSize: 18),
                  //           //     ),
                  //           //     onPressed: () async {
                  //           //       await controller
                  //           //           .openImageFile(context)
                  //           //           .then((file) {
                  //           //         if (file != null) {
                  //           //           showDialog<void>(
                  //           //             context: context,
                  //           //             builder: (BuildContext context) =>
                  //           //                 imageDisplay(
                  //           //                     context, file.name, file.path),
                  //           //           );
                  //           //         }
                  //           //       });
                  //           //     }),
                  //           SizedBox(
                  //             height: customSize.setHeight(30),
                  //           ),
                  //           Row(
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Obx(() {
                  //                 return Checkbox(
                  //                     checked: controller.isActive.value,
                  //                     onChanged: (v) {
                  //                       controller.isActive.value = v!;
                  //                     });
                  //               }),
                  //               SizedBox(
                  //                 width: customSize.setWidth(5),
                  //               ),
                  //               const Text(
                  //                 "IsActive",
                  //                 style: TextStyle(
                  //                     fontSize: 18,
                  //                     fontWeight: FontWeight.bold),
                  //               )
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //       GetBuilder<AddCategoryController>(
                  //           id: "categoryImageId",
                  //           init: controller,
                  //           builder: (controller) {
                  //             return Container(
                  //               decoration: controller.imageUrl == null
                  //                   ? BoxDecoration(border: Border.all())
                  //                   : null,
                  //               width: customSize.setWidth(100),
                  //               height: customSize.setHeight(200),
                  //               child: controller.imageUrl == null
                  //                   ? const Center(
                  //                       child: Icon(FluentIcons.image_pixel))
                  //                   : Image.file(File(controller.imageUrl!)),
                  //             );
                  //           })
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: customSize.setHeight(150),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     widgetState == WidgetState.loading &&
                  //             controller.isAddRequest
                  //         ? const Loading()
                  //         : FilledButton(
                  //             child: SizedBox(
                  //                 width: customSize.setWidth(50),
                  //                 child: const Text("Create")),
                  //             onPressed: () {
                  //               controller.addCategory();
                  //             }),
                  //     SizedBox(
                  //       width: customSize.setWidth(10),
                  //     ),
                  //     FilledButton(
                  //         child: SizedBox(
                  //             width: customSize.setWidth(50),
                  //             child: const Text("Reset")),
                  //         onPressed: () {
                  //           controller.resetView();
                  //         }),
                  //   ],
                  // )
                ],
              );
            }),
      ),
    );
  }

  // Widget imageDisplay(BuildContext context, String fileName, String filePath) {
  //   return ContentDialog(
  //     title: Text(fileName),
  //     // On web the filePath is a blob url
  //     // while on other platforms it is a system path.
  //     content: Image.file(File(filePath)),
  //     actions: <Widget>[
  //       TextButton(
  //         child: const Text('Close'),
  //         onPressed: () {
  //           Navigator.pop(context);
  //         },
  //       ),
  //       TextButton(
  //         child: const Text('save'),
  //         onPressed: () {
  //           controller.saveImage(filePath);
  //           Navigator.pop(context);
  //         },
  //       ),
  //     ],
  //   );
  // }
}
