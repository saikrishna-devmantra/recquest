import '../controller/forgot_password_verification_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordVerificationController());
  }
}
