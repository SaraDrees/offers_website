import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/shared/identity_repository.dart';
import 'package:offers_website/core/models/employee_model.dart';
import 'package:offers_website/core/services/request_mixin.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class IdentityController extends GetxStateController {
  var selectedTab = 0.obs;
  IdentityRepository identityRepository;

  final ScrollController horizontalScrollController = ScrollController();
  final ScrollController verticalScrollController = ScrollController();

  IdentityController({required this.identityRepository});

  void updateSelectedTab(int i) {
    selectedTab.value = i;
  }

  List<Employee> employees = [];
  bool isAddRequest = false;

  var obscureText = true.obs;

  Employee employee = Employee(
      id: "id",
      username: "",
      fullName: "",
      phone: "",
      isActive: false,
      permissions: []);

  List<Permission> permissions = [];
  Permission? selectedPermission;

  void getEmployees() async {
    employees.clear();
    requestMethod(
        ids: ["employeeTableId"],
        requestType: RequestType.getData,
        function: () async {
          employees.addAll(await identityRepository.getEmployees());
          return null;
        });
  }

  void selectPermission(Permission selectedPermission) {
    permissions
        .singleWhere((element) => element.id == selectedPermission.id)
        .selected = !selectedPermission.selected;
    update([selectedPermission.id]);
  }

  void editSelectedPermission(Permission permission) {
    selectedPermission = permission;
    update(["permissionsId"]);
  }

  Future addEmployee() async {
    // if (selectedPermission != null) {
    employee.permissions
        .addAll(permissions.where((element) => element.selected).toList());
    requestMethod(
        ids: ["addEmployeeId"],
        requestType: RequestType.postData,
        function: () async {
          isAddRequest = true;
          await identityRepository.addEmployee(employee);
          // isAddRequest = false;
          resetView();
          getEmployees();
          return null;
        });
    // } else {
    //   log("lllll");
    // }
  }

  void resetView() {
    Employee(
        id: "id",
        username: "",
        fullName: "",
        phone: "",
        isActive: false,
        permissions: []);
    // selectedPermission = null;
    update(["addEmployeeId", "Permissions"]);
  }

  void getpermissions() async {
    requestMethod(
        ids: ["addEmployeeId"],
        requestType: RequestType.getData,
        function: () async {
          permissions.addAll(await identityRepository.getPermissions());
          return null;
        });
  }

  @override
  void onInit() {
    getEmployees();
    getpermissions();
    super.onInit();
  }
}
