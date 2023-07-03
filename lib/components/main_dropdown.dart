// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MainDropdown extends StatelessWidget {
  final double? width;
  final String? title;
  final dynamic? selectedValue;
  final Color? titleColor;
  final Color? iconColor;
  final BoxDecoration? boxDecoration;
  final EdgeInsetsGeometry? buttonPadding;
  final Function(dynamic)? onChanged;
  final List<DropdownMenuItem<Object>>? items;
  const MainDropdown(
      {Key? key,
      this.width,
      this.onChanged,
      this.boxDecoration,
      this.buttonPadding,
      this.title,
      this.titleColor,
      required this.items,
      this.iconColor,
      this.selectedValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      // margin: EdgeInsets.symmetric(horizontal: 10.w),
      // height: 15,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Text(
            title ?? '',
            maxLines: 1, overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFF313131),
              fontSize: 14,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
            ),
            // overflow: TextOverflow.ellipsis,
          ),

          items: items,
          // items
          //     .map((item) => DropdownMenuItem<String>(
          //           value: item,
          //           child: Text(
          //             item,
          //             style: const TextStyle(
          //               fontSize: 12,
          //               color: Colors.black,
          //             ),
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //         ))
          //     .toList(),
          value: selectedValue,
          onChanged: onChanged ?? (value) {},
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.black,
          iconDisabledColor: Colors.grey,
          buttonHeight: 50,
          // buttonWidth: 160,
          buttonPadding: buttonPadding ?? EdgeInsets.zero,
          buttonDecoration: boxDecoration,
          buttonElevation: 0,
          itemHeight: 32,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          // dropdownWidth: 50.w,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          dropdownElevation: 2,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
