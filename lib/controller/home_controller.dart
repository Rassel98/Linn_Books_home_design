import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedDate = DateTime.now().obs;
 RxString ?selectedCategory;


  var title = 'Ad Expense'.obs;
  var isIncome = false.obs ;
  var isExpense = true.obs;
  var isTwd = false.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }
  //
  // @override
  // void onClose() {}

  getSelectedButton({required String newTitle, bool isIn=false, bool isEx=false, bool isTw=false}){
    title.value=newTitle;
    isIncome.value=isIn;
    isExpense.value=isEx;
    isTwd.value=isTw;

  }
  setSelectCategory(String cat){
    selectedCategory=cat as RxString?;
  }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      cancelText: 'Close',
      confirmText: 'Confirm',
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }
}
