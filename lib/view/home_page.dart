import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linn_books/widgets/constant.dart';

import '../widgets/custom_horizontal_listview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'add_expense_page.dart';
import 'add_tg_record_page.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF042c5c),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          FontAwesomeIcons.barsStaggered,
          size: 40,
        ),
        title: Stack(
          children: [
            Container(
              color: Colors.transparent,
              height: 40,
              width: 124,
              child: const Text(
                'Linn',
                style: TextStyle(fontSize: 34, color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                'Books',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: CircleAvatar(
              radius: 26,
              backgroundColor: const Color(0xFFf46316),
              child: CircleAvatar(

                radius: 25,
                backgroundColor: const Color(0xFF695857),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.briefcase,
                      color: Colors.white,
                    )),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Hovata Technologies',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon:   const Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Colors.white,
                            ))

                      ],
                    ),
                    Text(
                      getFormatDate(DateTime.now(), 'dd-MMM hh:mm a'),

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          color: const Color(0xFF647d9b)),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Balance',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: (){},
                      child: const Text(
                        '\$50,000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Color(0xFF647d9b)),
                      ),
                    )

                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: double.maxFinite,
                  color: Colors.transparent,
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 16,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xFFe0e7ff),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      '1 NList',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 93,
                  child: Container(
                    alignment: Alignment.center,
                    height: 16,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xFFff6310),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      '+\$5,000',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 93,
                  child: Container(
                    alignment: Alignment.center,
                    height: 16,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xFFf24750),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      '-\$5,000',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 16,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1bc773),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      '+\$10,000',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //shrinkWrap: true,
                  // physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: iconsItems.length,
                  itemBuilder: (context, index) {
                    final item = iconsItems[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: HorizontalItemView(
                        onPressed: (value) {},
                        item: item,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomSheet: Stack(
        children: [
          DraggableScrollableSheet(
            expand: false,
            maxChildSize: .9,
            minChildSize: 0.7,
            initialChildSize: 0.7,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),

                // elevation: 0,
                child: ListView(
                  controller: scrollController,
                  children: [
                    //const Center(child: Icon(Icons.drag_handle)),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                     Stack(
                       children: [
                         Column(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 30),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   TextButton(
                                     onPressed: () {},
                                     child: const Text(
                                       'Records',
                                       style: TextStyle(
                                           fontSize: 14,
                                           color: Colors.black54,
                                           fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                   TextButton(
                                     onPressed: () {},
                                     child: const Text(
                                       'Customer',
                                       style: TextStyle(
                                           fontSize: 14,
                                           color: Colors.black54,
                                           fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                   TextButton(
                                     clipBehavior: Clip.antiAlias,
                                     onPressed: () {},
                                     child: const Text(
                                       'Supplier',
                                       style: TextStyle(
                                           fontSize: 14,
                                           color: Colors.black54,
                                           fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                   TextButton(
                                     onPressed: () {},
                                     child: const Text(
                                       'Loan',
                                       style: TextStyle(
                                           fontSize: 14,
                                           color: Colors.black54,
                                           fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             const Divider(
                               height: 1,
                               color: Colors.blue,
                             ),
                             ListView.builder(
                               shrinkWrap: true,
                               physics:NeverScrollableScrollPhysics(),
                               itemCount: 15,
                               itemBuilder: (context, index) => const ListTile(
                                 leading: Icon(Icons.add_circle),
                                 title: Text('Dummy data'),
                                 subtitle: Text('nfdg'),
                               ),
                             ),
                           ],
                         ),

                       ],
                     ),


                  ],
                ),
              );
            },
          ),
          Positioned(
              right: 10,
              bottom: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF042c5c),
                    borderRadius: BorderRadius.circular(50)),
                height: 50,
                width: 50,
                child: IconButton(
                  onPressed: () =>Get.to(const AddTgRecord()),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )),
          Positioned(
              right: 80,
              bottom: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF042c5c),
                    borderRadius: BorderRadius.circular(40)),
                height: 40,
                width: 40,
                child: IconButton(
                  onPressed: () =>Get.to(const AddTgRecord()),
                  icon: const Icon(
                    Icons.group,
                    color: Colors.white,
                  ),
                ),
              )),
          Positioned(
              right: 10,
              bottom: 90,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF042c5c),
                    borderRadius: BorderRadius.circular(40)),
                height: 40,
                width: 40,
                child: IconButton(
                  onPressed: () =>Get.to(const AddExpense()),
                  icon: const Icon(
                    Icons.attach_money,
                    color: Colors.white,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
