// ignore_for_file: file_names, avoid_print

import 'package:get/state_manager.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  int get sum => count1.value + count2.value;

  increment() => count1.value++;

  increment2() => count2.value++;

  reset() => count1.value = count2.value = 0;

  @override
  onInit() {

    ever(count1, (_) => print("$_ has been changed"));

    once(count1, (_) => print("$_ was changed once"));

    debounce(count1, (_) => print("debouce$_"),
        time: const Duration(seconds: 1));

    interval(count1, (_) => print("interval $_"),
        time: const Duration(seconds: 1));
    super.onInit();
  }
}