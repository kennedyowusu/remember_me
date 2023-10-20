import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remember_me/remember_me_controller.dart';

class RememberMeScreen extends StatelessWidget {
  RememberMeScreen({super.key});

  final RememberMeController controller = Get.put(RememberMeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remember Me Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Checkbox(
                value: controller.rememberMe.value,
                onChanged: (value) {
                  controller.toggleRememberMe(value!);
                },
              ),
            ),
            const Text('Remember Me'),
          ],
        ),
      ),
    );
  }
}
