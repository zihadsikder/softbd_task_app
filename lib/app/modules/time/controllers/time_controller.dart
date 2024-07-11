import 'package:get/get.dart';
import 'package:softbd_task/app/data/models/network_response.dart';
import 'package:softbd_task/app/data/models/paragraph_res.dart';
import 'package:softbd_task/app/data/repositories/paragraph_repository.dart';

class TimeController extends GetxController {
  final isLoading = false.obs;
  final paragraphList = ParagraphRes().obs;

  @override
  void onInit() {
    super.onInit();
    getParagraph();
  }

  Future<void> getParagraph() async {
    isLoading.value = true;
    final NetworkResponse response = await ParagraphRepository.getParagraph();

    if (response.isSuccess) {
      paragraphList.value = paragraphResFromJson(response.jsonResponse!);
    }
    isLoading.value = false;
  }
}
