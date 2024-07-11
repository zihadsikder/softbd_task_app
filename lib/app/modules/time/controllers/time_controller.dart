import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task/app/data/models/network_response.dart';
import 'package:softbd_task/app/data/models/paragraph_res.dart';
import 'package:softbd_task/app/data/repositories/paragraph_repository.dart';

class TimeController extends GetxController {
  final isLoading = false.obs;
  final paragraphList = ParagraphRes().obs;
  final selectedDay = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getParagraph();
  }

  void selectDay(int index) {
    selectedDay.value = index;
  }

  Future<void> getParagraph() async {
    isLoading.value = true;
    final NetworkResponse response = await ParagraphRepository.getParagraph();

    if (response.isSuccess) {
      paragraphList.value = paragraphResFromJson(response.jsonResponse!);
    }
    isLoading.value = false;
  }

  // Helper function to format the date from Unix timestamp
  // String formatTime(String timestamp) {
  //   //print('Original timestamp: $timestamp'); // Debugging print
  //   int unixTimestamp = int.parse(timestamp);
  //   DateTime dateTime =
  //       DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
  //   return DateFormat('hh:mm a').format(dateTime);
  // }

  ///update this time format - 12 hours & convert bangla letter

  String formatTime(String timestamp) {
    int unixTimestamp = int.parse(timestamp);
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);

    // Format DateTime into 12-hour format without AM/PM and in Bangla
    String formattedTime = DateFormat('hh:mm').format(dateTime);

    // Replace English digits with Bengali digits (optional step)
    formattedTime = replaceDigitsWithBangla(formattedTime);

    return formattedTime;
  }

// Function to replace English digits with Bengali digits
  String replaceDigitsWithBangla(String input) {
    Map<String, String> digitMap = {
      '0': '০',
      '1': '১',
      '2': '২',
      '3': '৩',
      '4': '৪',
      '5': '৫',
      '6': '৬',
      '7': '৭',
      '8': '৮',
      '9': '৯',
    };

    String banglaDigits = input.split('').map((char) {
      if (digitMap.containsKey(char)) {
        return digitMap[char];
      } else {
        return char;
      }
    }).join('');

    return banglaDigits;
  }

  // Helper function to get the part of the day from Unix timestamp
  String getTimeOfDay(String timestamp) {
    //print('Original timestamp: $timestamp'); // Debugging print
    int unixTimestamp = int.parse(timestamp);
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
    int hour = dateTime.hour;

    if (hour >= 6 && hour < 12) {
      return 'সকাল';
    } else if (hour >= 12 && hour < 16) {
      return 'দুপুর';
    } else if (hour >= 16 && hour < 19) {
      return 'বিকাল';
    } else {
      return 'রাত';
    }
  }
}
