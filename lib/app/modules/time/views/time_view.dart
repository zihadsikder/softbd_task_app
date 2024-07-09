import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/time_controller.dart';

class TimeView extends GetView<TimeController> {
  const TimeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TimeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
