import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/loading.dart';
import 'package:offers_website/core/widgets/widget_state.dart';

class AddEmployeeView extends GetView<IdentityController> {
  const AddEmployeeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(
        builder: (customSize) => Padding(
            padding: EdgeInsets.symmetric(
                horizontal: customSize.setWidth(20),
                vertical: customSize.setHeight(80)),
            child: StateBuilder<IdentityController>(
                id: "addEmployeeId",
                disableState: true,
                initialWidgetState: WidgetState.loaded,
                builder: (widgetState, controller) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "user name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      // decoration: BoxDecoration(border: Border.all()),
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: const Text("data")),
                                  // child: TextBox(
                                  //   controller: TextEditingController(
                                  //       text: controller.employee.username),
                                  //   decoration: const BoxDecoration(
                                  //       border: Border()),
                                  //   placeholder: "user name",
                                  //   onChanged: (i) {
                                  //     controller.employee.username = i;
                                  //   },
                                  // )),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: customSize.setWidth(50),
                            // ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " password",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      // decoration: BoxDecoration(border: Border.all()),
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: Obx(() {
                                        return const Text("data");
                                        // return TextBox(
                                        //   // obscureText:
                                        //   //     controller.obscureText.value,
                                        //   // suffix: Icon(
                                        //   //     controller.obscureText.value
                                        //   //         ? FluentIcons.red_eye
                                        //   //         : FluentIcons.red_eye12),
                                        //   keyboardType:
                                        //       TextInputType.visiblePassword,
                                        //   // controller: TextEditingController(
                                        //   //     text: controller.employee.password),
                                        //   decoration: const BoxDecoration(
                                        //       border: Border()),
                                        //   placeholder: "password",
                                        //   onChanged: (i) {
                                        //     controller.employee.password = i;
                                        //   },
                                        // );
                                      })),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " full name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      // decoration: BoxDecoration(border: Border.all()),
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: const Text("data")),
                                  // child: TextBox(
                                  //   controller: TextEditingController(
                                  //       text: controller.employee.fullName),
                                  //   decoration: const BoxDecoration(
                                  //       border: Border()),
                                  //   placeholder: "full name",
                                  //   onChanged: (i) {
                                  //     controller.employee.fullName = i;
                                  //   },
                                  // )),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " phone",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      // decoration: BoxDecoration(border: Border.all()),
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: const Text("data")),
                                  // child: TextBox(
                                  //   keyboardType: TextInputType.number,
                                  //   controller: TextEditingController(
                                  //       text: controller.employee.phone),
                                  //   decoration: const BoxDecoration(
                                  //       border: Border()),
                                  //   placeholder: "phone",
                                  //   onChanged: (i) {
                                  //     controller.employee.phone = i;
                                  //   },
                                  // )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: customSize.setHeight(100),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " Permissions",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),

                                  SizedBox(
                                    width: customSize.screenWidth -
                                        customSize.setWidth(50),
                                    height: customSize.screenHeight / 4,
                                    child: Scrollbar(
                                        controller: controller
                                            .horizontalScrollController,
                                        child: ListView.builder(
                                            // physics:
                                            //     const NeverScrollableScrollPhysics(),
                                            controller: controller
                                                .horizontalScrollController,
                                            scrollDirection: Axis.horizontal,
                                            itemCount:
                                                controller.permissions.length,
                                            itemBuilder: (_, i) => Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    GetBuilder<
                                                            IdentityController>(
                                                        id: controller
                                                            .permissions[i].id,
                                                        builder: (controller) {
                                                          return const Text(
                                                              "data");
                                                          // // return Checkbox(
                                                          // //     checked: controller
                                                          // //         .permissions[
                                                          // //             i]
                                                          // //         .selected,
                                                          //     onChanged: (P) {
                                                          //       controller.selectPermission(
                                                          //           controller
                                                          //               .permissions[i]);
                                                          //       // controller
                                                          //       //     .permissions[
                                                          //       //         i]
                                                          //       //     .selected = v!;
                                                          //     });
                                                        }),
                                                    SizedBox(
                                                      width: customSize
                                                          .setWidth(2),
                                                    ),
                                                    Text(
                                                      controller
                                                          .permissions[i].name,
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: customSize
                                                          .setWidth(5),
                                                    ),
                                                  ],
                                                ))),
                                  ),
                                  // ConstrainedBox(
                                  //   constraints: BoxConstraints(
                                  //       minWidth: customSize.screenWidth / 4,
                                  //       maxWidth: customSize.screenWidth / 4),
                                  //   child: widgetState == WidgetState.loading &&
                                  //           // true
                                  //           !controller.isAddRequest
                                  //       ? const Loading()
                                  //       : GetBuilder<IdentityController>(
                                  //           id: "permissionsId",
                                  //           init: controller,
                                  //           builder: (controller) {
                                  //             return Combobox<Permission>(
                                  //                 isExpanded: true,
                                  //                 onChanged: (i) {
                                  //                   controller
                                  //                       .editSelectedPermission(
                                  //                           i!);
                                  //                 },
                                  //                 placeholder:
                                  //                     const Text("Select"),
                                  //                 value: controller
                                  //                     .selectedPermission,
                                  //                 items: List<
                                  //                         ComboboxItem<
                                  //                             Permission>>.generate(
                                  //                     controller
                                  //                         .permissions.length,
                                  //                     (index) => ComboboxItem(
                                  //                           child: Text(
                                  //                               controller
                                  //                                   .permissions[
                                  //                                       index]
                                  //                                   .name),
                                  //                           value: controller
                                  //                                   .permissions[
                                  //                               index],
                                  //                         )));
                                  //           }),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: customSize.setHeight(150),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widgetState == WidgetState.loading &&
                                    controller.isAddRequest
                                ? const Loading()
                                : const Text("data"),
                            // : FilledButton(
                            //     child: SizedBox(
                            //         width: customSize.setWidth(50),
                            //         child: const Text("Create")),
                            //     onPressed: () {
                            //       controller.addEmployee();
                            //     }),
                            SizedBox(
                              width: customSize.setWidth(10),
                            ),
                            // FilledButton(
                            //     child: SizedBox(
                            //         width: customSize.setWidth(50),
                            //         child: const Text("Reset")),
                            //     onPressed: () {
                            //       controller.resetView();
                            //     }),
                          ],
                        )
                      ]);
                })));
  }
}
