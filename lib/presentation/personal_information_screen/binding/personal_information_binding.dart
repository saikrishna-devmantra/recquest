import '../controller/personal_information_controller.dart';
import 'package:get/get.dart';

class PersonalInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalInformationController());
  }
}
