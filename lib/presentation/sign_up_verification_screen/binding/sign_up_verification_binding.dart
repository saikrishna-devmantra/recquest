import '../controller/sign_up_verification_controller.dart';
import 'package:get/get.dart';

class SignUpVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpVerificationController());
  }
}
