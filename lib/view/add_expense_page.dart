import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linn_books/controller/home_controller.dart';
import 'package:linn_books/widgets/expense_widgets.dart';
import 'package:linn_books/widgets/income_widgets.dart';

import '../widgets/twd_widgets.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String title = 'Ad Expense';
    // bool isIncome = false;
    // bool isExpense = true;
    // bool isTwd = false;

    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        color: const Color(0xFF042c5c),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: ()=>Get.back(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Obx(
                      () => Text(
                        controller.title.value,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 727,
                    decoration: BoxDecoration(
                        color: Colors.red.shade500,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: InkWell(

                          splashColor: Colors.black,
                          onTap: () {
                            controller.getSelectedButton(
                                newTitle: 'Add Income', isIn: true);
                          },
                          child: Stack(
                            children: [
                              Obx(
                                () => Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      color: controller.isIncome.value
                                          ? Colors.green
                                          : Colors.purple.shade500,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30))),
                                ),
                              ),
                              const Positioned(
                                  top: 12,
                                  left: 40,
                                  child: Text(
                                    'Income',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))
                            ],
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            controller.getSelectedButton(
                                newTitle: 'Add Expense', isEx: true);
                          },
                          child: Stack(
                            children: [
                              Obx(
                                () => Container(
                                  decoration: BoxDecoration(
                                    color: controller.isExpense.value
                                        ? Colors.redAccent
                                        : Colors.purple.shade500,
                                  ),
                                ),
                              ),
                              const Positioned(
                                  top: 12,
                                  left: 30,
                                  child: Text(
                                    'Expense',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))
                            ],
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            controller.getSelectedButton(
                                newTitle: 'TWD', isTw: true);
                          },
                          child: Stack(
                            children: [
                              Obx(
                                () => Container(
                                  decoration: BoxDecoration(
                                      color: controller.isTwd.value
                                          ? Colors.deepPurpleAccent
                                          : Colors.purple.shade500,
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(30))),
                                ),
                              ),
                              const Positioned(
                                  top: 12,
                                  right: 40,
                                  child: Text(
                                    'TWD',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 700,
                      decoration:  BoxDecoration(
                          border: Border.all(color: Colors.red,),
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30))),
                      child:Obx(()=>Column(
                        children: [
                          if(controller.isIncome.value)const Income(),
                          if(controller.isExpense.value)const Expense(),
                          if(controller.isTwd.value)const TwdWidgets()
                        ],
                      ),)
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
