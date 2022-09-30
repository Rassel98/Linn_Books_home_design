
import 'package:flutter/material.dart';
import 'package:linn_books/widgets/constant.dart';

class HorizontalItemView extends StatelessWidget {
  final HorizontalItem item;
  final Function(String) onPressed;
  const HorizontalItemView(
      {Key? key, required this.item, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed(item.title);
      },
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: item.color,
                borderRadius: BorderRadius.circular(30)),
            child:  Icon(
              item.icon,
              size: 30,
              color: item.iconColor,
            ),
          ),
          // SizedBox(height: 2,),
           Text(
            item.title,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
