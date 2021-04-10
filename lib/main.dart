import 'package:flutter/material.dart';
import 'package:flutter_item_add_remove_widget/screens/item_list_screen.dart';
import 'package:flutter_item_add_remove_widget/widgets/add_remove_item_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ItemListScreen(),
    );
  }
}
