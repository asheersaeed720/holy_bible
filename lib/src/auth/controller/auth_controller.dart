import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:holy_bible/src/auth/controller/auth_service.dart';
import 'package:holy_bible/src/network_manager.dart';
import 'package:holy_bible/utils/display_toast_message.dart';

class AuthController extends NetworkManager {
  final _authService = Get.find<AuthService>();

  final GetStorage _getStorage = GetStorage();

  Map currentUserData = {};

  bool isLoading = false;

  bool obscureText = true;

  String rememberEmail = '';

  bool isRememberMe = false;

  @override
  void onInit() {
    // currentUserData = getCurrentUser();
    rememberEmail = _getStorage.read('email') ?? '';
    super.onInit();
  }

  void togglePw() {
    obscureText = !obscureText;
    update();
  }

  // Future<void> handleLogIn(String email, String password) async {
  //   if (connectionType != 0) {
  //     try {
  //       var response = await _authService.logInUser(email, password);
  //       if (response.statusCode == 200) {
  //         _getStorage.write(
  //           'user',
  //           {
  //             'key': "${response.body['key']}",
  //             ...response.body['user'],
  //           },
  //         );
  //         currentUserData = getCurrentUser();
  //         if (isRememberMe) {
  //           _getStorage.write('email', email);
  //           rememberEmail = _getStorage.read('email');
  //         }
  //         update();
  //         Get.offAllNamed(TabScreen.routeName);
  //       } else if (response.statusCode == 404) {
  //         displayToastMessage('Invalid Credentials');
  //       } else {
  //         displayToastMessage('Something went wrong');
  //       }
  //       log('loginRes ${response.body}, type:${response.body.runtimeType}');
  //     } catch (e) {
  //       displayToastMessage(e);
  //       rethrow;
  //     }
  //   } else {
  //     customSnackBar('Network error', 'Please try again later');
  //   }
  // }

  // Future<void> handleSignUp({
  //   required String firstName,
  //   required String lastName,
  //   required String email,
  //   required String phoneNo,
  //   required String dateOfBirth,
  //   required String gender,
  //   required String password,
  // }) async {
  //   if (connectionType != 0) {
  //     try {
  //       var response = await _authService.signUpUser(
  //         firstName: firstName,
  //         lastName: lastName,
  //         email: email,
  //         phoneNo: phoneNo,
  //         dateOfBirth: dateOfBirth,
  //         gender: gender,
  //         password: password,
  //       );
  //       if (response.statusCode == 200) {
  //         _getStorage.write(
  //           'user',
  //           {
  //             'key': "${response.body['key']}",
  //             ...response.body['user'],
  //           },
  //         );
  //         currentUserData = getCurrentUser();
  //         update();
  //         Get.offAllNamed(TabScreen.routeName);
  //       } else if (response.statusCode == 404) {
  //         displayToastMessage('Invalid Credentials');
  //       } else {
  //         displayToastMessage('Something went wrong');
  //       }
  //       log('signUpRes ${response.body}, type:${response.body.runtimeType}');
  //     } catch (e) {
  //       displayToastMessage(e);
  //       rethrow;
  //     }
  //   } else {
  //     customSnackBar('Network error', 'Please try again later');
  //   }
  // }

  // Map getCurrentUser() {
  //   Map userData = _getStorage.read('user') ?? {};
  //   if (userData.isNotEmpty) {
  //     Map user = userData;
  //     log('$userData', name: 'storeUser');
  //     return user;
  //   } else {
  //     return {};
  //   }
  // }

  logoutUser() {
    _getStorage.remove('user');
    currentUserData = _getStorage.read('user') ?? {};
    update();
    displayToastMessage('Logout');
  }
}
