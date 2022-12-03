import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool don = false;
Future<bool> data() async {
  final prefs = await SharedPreferences.getInstance();
  don = prefs.getBool("first") == null ? false : prefs.getBool("first")!;

  don = don;

  return don;
}

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
