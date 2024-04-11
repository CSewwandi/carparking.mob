import 'package:get/get.dart';
import 'package:smart_car_parking/pages/LoginPage.dart';

class SplaceController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    pageHander();
  }

  void pageHander() async {
    Future.delayed(
      const Duration(seconds: 30),
      () {
        // Get.offAllNamed("/map-page");
        Get.offAll(LoginPage());
        update();
      },
    );
  }
}
