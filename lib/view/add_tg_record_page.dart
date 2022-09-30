import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:linn_books/widgets/constant.dart';

import '../controller/home_controller.dart';

class AddTgRecord extends StatelessWidget {
  const AddTgRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final receiveController = TextEditingController();
    final payController = TextEditingController();
    final nodeController = TextEditingController();
    HomeController controller=Get.put(HomeController());
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
                    const Text(
                      'Add TG Record',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
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
                  ),
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 700,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.search,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          'Select G.Loan',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add))
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Receive',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      TextField(
                                        controller: receiveController,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Amount',
                                          hintStyle: TextStyle(
                                              color: Colors.grey, fontSize: 25),
                                          disabledBorder: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              borderSide: BorderSide(
                                                  color: Colors.purpleAccent,
                                                  width: 2),
                                              gapPadding: 4.0),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              gapPadding: 4.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Pay',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      TextField(
                                        controller: payController,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.done,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Amount',
                                          hintStyle: TextStyle(
                                              color: Colors.grey, fontSize: 25),
                                          disabledBorder: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              borderSide: BorderSide(
                                                  color: Colors.purpleAccent,
                                                  width: 2),
                                              gapPadding: 4.0),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              gapPadding: 4.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 50,
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(
                                          () => Text(
                                            DateFormat("dd-MMM-yyyy")
                                                .format(controller
                                                    .selectedDate.value)
                                                .toString(),
                                            style: const TextStyle(fontSize: 18,color: Colors.black),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              controller.chooseDate();
                                            },
                                            icon: const Icon(
                                              Icons.arrow_drop_down_circle_outlined,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Wallet',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 50,
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                            'Cash on Hand: ${bdCurrency}0'),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.arrowsDownToLine,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Node',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextField(
                                  controller: nodeController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Node down here',
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                    disabledBorder: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        borderSide: BorderSide(
                                            color: Colors.purpleAccent,
                                            width: 2),
                                        gapPadding: 4.0),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        gapPadding: 4.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          InkWell(
                            onTap: () {},
                            //splashColor: Colors.red,
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              alignment: Alignment.center,
                              width: double.maxFinite,
                              height: 90,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF042c5c),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
