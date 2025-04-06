import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/AppColors.dart';
import 'package:grocery_app/app_utils/app_utils.dart';

Widget choiceChips(String item) {
  List<String> itemList = item.split(",");
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(itemList.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Wrap(runSpacing: 8, spacing: 8, children: [
            ActionChip(
                label: Text(itemList[index]),
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
                backgroundColor: Appcolors.appPrimary,

                /* have to implement method to change color of selected item and change 
              item list on home screen according to selected item*/
                onPressed: () =>
                    showLog("Selected chip item -----> ${itemList[index]}"))
          ]),
        );
      }),
    ),
  );
}
