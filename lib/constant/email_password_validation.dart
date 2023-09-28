// // ignore_for_file: omit_local_variable_types

// import 'package:get/get.dart';

// import '../controller/auth_controller.dart';

// ///// Login Page Text field Validation/////////////////
// Future<bool> logInEmailPasswordValidator(String em, String password) async {
//   final loginController = Get.put(AuthController());
//   const String p =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//   final RegExp regExp = RegExp(p);
//   //// Check Email Validation///////
//   if (loginController.loginValidationList.contains(1)) {
//     if (em.isEmpty) {
//       loginController.emailError.value = "Please Enter Email";

//       print(loginController.emailError.value);
//     } else if (!regExp.hasMatch(em)) {
//       print("object");
//       print("ss");
//       loginController.emailError.value = "Email Invalid ";
//     } else {
//       loginController.loginValidationList
//           .removeWhere((element) => element == 1);
//       //  loginController.loginValidationList.removeAt(0);
//     }
//   }

//   //// Check PAssword Validation///////
//   if (loginController.loginValidationList.contains(2)) {
//     if (password.isEmpty) {
//       loginController.passwordError.value = "Please Enter Password";

//       print(loginController.passwordError);
//     } else if (password.length < 6) {
//       loginController.passwordError.value = "Password length should at least 6";

//       print(loginController.passwordError);
//     } else {
//       print(loginController.loginValidationList);
//       loginController.loginValidationList
//           .removeWhere((element) => element == 2);
//       print(loginController.loginValidationList);
//     }
//   }
//   return loginController.loginValidationList.isEmpty;
// }

// ///// Sign Up Page Text field Validation/////////////////

// Future<bool> signUpEmailPasswordValidator(
//     String email, String password, String userName) async {
//   final signUpController = Get.put(AuthController());
//   const String p =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//   final RegExp regExp = RegExp(p);

//   ///  Check UserName Validation////////////

//   if (signUpController.signUpValidationList.contains(0)) {
//     if (userName.isEmpty) {
//       print("name");
//       signUpController.userNameError.value = "Please Enter User Name";
//     } else {
//       signUpController.signUpValidationList
//           .removeWhere((element) => element == 0);
//     }
//   }

//   //// Check Email Validation///////

//   if (signUpController.signUpValidationList.contains(1)) {
//     if (email.isEmpty) {
//       signUpController.emailError.value = "Please Enter Email";

//       print(signUpController.emailError.value);
//     } else if (!regExp.hasMatch(email)) {
//       print("object");
//       signUpController.emailError.value = "Email Invalid ";
//     } else {
//       signUpController.signUpValidationList
//           .removeWhere((element) => element == 1);
//     }
//   }

//   //// Check PAssword Validation///////
//   if (signUpController.signUpValidationList.contains(2)) {
//     if (password.isEmpty) {
//       signUpController.passwordError.value = "Please Enter Password";

//       print(signUpController.passwordError);
//     } else if (password.length < 6) {
//       signUpController.passwordError.value =
//           "Password length should at least 6";

//       print(signUpController.passwordError);
//     } else {
//       signUpController.signUpValidationList
//           .removeWhere((element) => element == 2);
//     }
//   }
//   return signUpController.signUpValidationList.isEmpty;
// }
