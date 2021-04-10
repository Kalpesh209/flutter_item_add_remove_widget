import 'package:flutter/material.dart';
import 'package:flutter_item_add_remove_widget/common/color_constants.dart';

/*
Title:AddRemoveItemWidget
Purpose:AddRemoveItemWidget
Created By:Kalpesh Khandla
*/

class AddRemoveItemWidget extends StatefulWidget {
  AddRemoveItemWidget({
    Key key,
  }) : super(key: key);

  @override
  _AddRemoveItemWidgetState createState() => _AddRemoveItemWidgetState();
}

class _AddRemoveItemWidgetState extends State<AddRemoveItemWidget> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            onItemRemove();
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: ColorConstants.kOrangeColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                "assets/images/minus.png",
                height: 10,
                width: 10,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          itemCount.toString(),
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: ColorConstants.kTextColor,
              ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            onItemAdd();
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: ColorConstants.kOrangeColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                "assets/images/plus.png",
                height: 10,
                width: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }

  onItemAdd() {
    if (itemCount >= 0) {
      int newdata = itemCount + 1;
      setState(() {
        itemCount = newdata;
      });
    }
  }

  onItemRemove() {
    if (itemCount > 0) {
      int newdata = itemCount - 1;
      setState(
        () {
          itemCount = newdata;
        },
      );
    }
  }
}
