import 'package:flutter/material.dart';
import 'package:flutter_item_add_remove_widget/widgets/add_remove_item_widget.dart';

class ItemListScreen extends StatefulWidget {
  ItemListScreen({Key key}) : super(key: key);

  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AddRemoveItemWidget(),
        ),
      ),
    );
  }
}
