import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task/app/data/models/network_response.dart';
import 'package:softbd_task/app/data/models/paragraph_res.dart';
import 'package:softbd_task/app/data/repositories/paragraph_repository.dart';

class TimeController extends GetxController {
  final TextEditingController text1TEController = TextEditingController();
  final TextEditingController dateTEController = TextEditingController();
  final TextEditingController mapTEController = TextEditingController();
  final TextEditingController text2TEController = TextEditingController();
  final TextEditingController text3TEController = TextEditingController();

  final isLoading = false.obs;
  final paragraphList = ParagraphRes().obs;
  final selectedDay = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initializeDateFormatting('bn_BD', null).then((_) {
      getParagraph();
    });
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

  String getFormattedCurrentDate() {
    DateTime now = DateTime.now();
    return formatDateToBangla(now);
  }

  List<Map<String, String>> getPreviousAndNextDays() {
    DateTime now = DateTime.now();
    List<Map<String, String>> days = [];

    for (int i = -7; i <= 7; i++) {
      DateTime date = now.add(Duration(days: i));
      days.add({
        'day': DateFormat.E('bn_BD').format(date),
        'date': replaceDigitsWithBangla(DateFormat.d('bn_BD').format(date))
      });
    }

    return days;
  }

  String formatDateToBangla(DateTime date) {
    //var banglaDays = ['রবি', 'সোম', 'মঙ্গল', 'বুধ', 'বৃহস্ঃ', 'শুক্র', 'শনি'];
    var banglaMonths = [
      'জানুয়ারি',
      'ফেব্রুয়ারী',
      'মার্চ',
      'এপ্রিল',
      'মে',
      'জুন',
      'জুলাই',
      'আগষ্ট',
      'সেপ্টেম্বর',
      'অক্টোবর',
      'নভেম্বর',
      'ডিসেম্বর'
    ];

    //String day = banglaDays[date.weekday % 7];
    String month = banglaMonths[date.month - 1];
    String dayOfMonth = replaceDigitsWithBangla(date.day.toString());
    //String year = replaceDigitsWithBangla(date.year.toString());

    return '$dayOfMonth $month';
    //return '$day, $dayOfMonth $month, $year';
  }

  String formatTime(String timestamp) {
    int unixTimestamp = int.parse(timestamp);
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);

    String formattedTime = DateFormat('hh:mm').format(dateTime);
    formattedTime = replaceDigitsWithBangla(formattedTime);

    return formattedTime;
  }

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
        return digitMap[char]!;
      } else {
        return char;
      }
    }).join('');

    return banglaDigits;
  }

  String getTimeOfDay(String timestamp) {
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
