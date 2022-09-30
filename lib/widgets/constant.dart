import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
String getFormatDate(DateTime dt,String format){
  return DateFormat(format).format(dt);
}

List<String>selectCategory=['Eduction','Clothing','Utility Bills','Fitness','Health Care'];
List<String>earnFrom=['Family','Business','Sale Product','Pretty Cash'];




class HorizontalItem{
  IconData icon;
  String title;
  Color iconColor;
  Color color;

  HorizontalItem({required this.icon, required this.title,required this.iconColor,required this.color});

  static const String income = 'Income';
  static const String expense = 'Expense';
  static const String loan = 'Loan';
  static const String syncs = 'Sync';
  static const String nList = 'NList';
  static const String nist = 'Ext';
  static const String ist = 'MList';

}

final List<HorizontalItem> iconsItems = [
  HorizontalItem(icon: FontAwesomeIcons.sackDollar, title: HorizontalItem.income,iconColor:const Color(0xFF1bc773),color:const Color(0xFF084b60)),
  HorizontalItem(icon: FontAwesomeIcons.handshake, title: HorizontalItem.expense,iconColor:const Color(0xFFf24750),color: const Color(0xFF343159)),
  HorizontalItem(icon: FontAwesomeIcons.handHolding, title: HorizontalItem.loan,iconColor:const Color(0xFFff6310),color: const Color(0xFF36374c)),
  HorizontalItem(icon: Icons.radar, title: HorizontalItem.syncs,iconColor:const Color(0xFFf48e5f),color: const Color(0xFF30517c)),
  HorizontalItem(icon: FontAwesomeIcons.xmark, title: HorizontalItem.nList,iconColor:const Color(0xFFe0e7ff),color: const Color(0xFF30517c)),
  HorizontalItem(icon: Icons.g_translate, title: HorizontalItem.nist,iconColor:const Color(0xFF084b60),color: const Color(0xFF084b60)),
  HorizontalItem(icon: Icons.safety_check, title: HorizontalItem.ist,iconColor:const Color(0xFF084b60),color: Colors.purple),
 // HorizontalItem(icon: Icons.safety_check, title: HorizontalItem.nList,color: Colors.white54),

];

const String bdCurrency='৳';