import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:linn_books/controller/home_controller.dart';
import 'package:linn_books/widgets/constant.dart';

class Expense extends StatefulWidget {
  const Expense({Key? key}) : super(key: key);

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  String? _selectedCategory;
  String? _selectedEarn;
  final amountController = TextEditingController();
  final nodeController = TextEditingController();
  HomeController controller = Get.put(HomeController());
  @override
  void dispose() {
    // TODO: implement dispose
    amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //HomeController controller=Get.put(HomeController());
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Amount',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              TextField(
                controller: amountController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 4)),
                    hintText: 'Enter Amount',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Category',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField(
                hint: const Text('Select Expense Category'),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 20,
                    backgroundColor: Colors.white),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                items: selectCategory
                    .map((values) => DropdownMenuItem<String>(
                        value: values, child: Text(values)))
                    .toList(),
                value: _selectedCategory,
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  } else {
                    return null;
                  }
                },
              ),

              // Container(
              //   height: 50,
              //   width: double.maxFinite,
              //   decoration: const BoxDecoration(
              //     color: Colors.grey,
              //     borderRadius:
              //     BorderRadius.all(Radius.circular(3)),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //         left: 16, right: 8),
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       mainAxisAlignment:
              //       MainAxisAlignment.spaceBetween,
              //       children: [
              //
              //         Text(''),
              //         IconButton(
              //             onPressed: () {},
              //             icon: const Icon(
              //               FontAwesomeIcons.arrowsDownToLine,
              //             ))
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Date',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Text(
                                getFormatDate(
                                    controller.selectedDate.value, 'dd-MMM-yyyy'),
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
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
                    const SizedBox(width: 5,),
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Earn Form ',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    DropdownButtonFormField(
                      hint: const Text('Earn From'),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 14,
                          backgroundColor: Colors.white),
                      // decoration: const InputDecoration(
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.all(Radius.circular(10)))),
                      items: earnFrom
                          .map((values) => DropdownMenuItem<String>(
                          value: values, child: Text(values)))
                          .toList(),
                      value: _selectedEarn,
                      onChanged: (value) {
                        setState(() {
                          _selectedEarn = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field must not be empty';
                        } else {
                          return null;
                        }
                      },
                    ),

                    // Container(
                    //   height: 50,
                    //   width: double.maxFinite,
                    //   decoration: const BoxDecoration(
                    //     color: Colors.grey,
                    //     borderRadius:
                    //     BorderRadius.all(Radius.circular(3)),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //         left: 16, right: 8),
                    //     child: Row(
                    //       mainAxisSize: MainAxisSize.min,
                    //       mainAxisAlignment:
                    //       MainAxisAlignment.spaceBetween,
                    //       children: [
                    //
                    //         Text(''),
                    //         IconButton(
                    //             onPressed: () {},
                    //             icon: const Icon(
                    //               FontAwesomeIcons.arrowsDownToLine,
                    //             ))
                    //       ],
                    //     ),
                    //   ),
                    // ),
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
                  hintText: 'Enter Node',
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
          height: 100,
        ),
        Container(
           clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          width: double.infinity,
          height: 80,
          decoration: const BoxDecoration(
              color: Color(0xFF042c5c),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ),
      ],
    );
  }
}
