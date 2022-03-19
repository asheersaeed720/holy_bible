import 'package:get/get.dart';
import 'package:holy_bible/src/auth/controller/auth_controller.dart';
import 'package:holy_bible/src/auth/controller/auth_service.dart';
import 'package:holy_bible/src/network_manager.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager(), permanent: true);
    Get.put(AuthService(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }
}
