import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class WidgetTitle3 extends StatefulWidget {
  const WidgetTitle3({Key? key}) : super(key: key);

  @override
  _WidgetTitle3State createState() => _WidgetTitle3State();
}

class _WidgetTitle3State extends State<WidgetTitle3> {
  final List<String> items = [
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Row(
        children: [
          SizedBox(
            height: 90,
          ),
      Center(
      child: DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint:  Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Pilih Hahun',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 40,
          width: 160,
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xff4babe7),
          ),
          elevation: 0,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: 160,
          padding: null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xff4babe7),
          ),
          elevation: 1,
          offset: const Offset(1, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    ),
    ),
        ],
      ),
    );
  }
}
