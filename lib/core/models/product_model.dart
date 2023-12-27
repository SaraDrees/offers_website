
class Product {

int id ;
String name ;
List<String> images ;
double price ;
String description ;
String ?fabric ;
List<String> colors ;
List<String> size ;
String code ;
bool isAvailable ;
bool isActive ;
int likesNumber ;
int mainCategoryId ;
int branchCategoryId ;
int shopId ;
int employeeId ;

Product({
  required this.id ,
  required this.name,
  required this.images,
  required this.price,
  required this.description,
  this.fabric ,
  required this.colors,
  required this.size,
  required this.code,
  required this.likesNumber,
  required this.isActive ,
  required this.isAvailable,
  required this.shopId,
  required this.mainCategoryId,
  required this.branchCategoryId,
  required this.employeeId

});


}