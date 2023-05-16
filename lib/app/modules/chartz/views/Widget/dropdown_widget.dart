import 'package:dashboard_rskg_mobile/app/modules/chartz/controllers/chartz_controller.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDropDown extends StatelessWidget {
  final List<String> items;
  const MyDropDown({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    ChartzController controller = Get.put(ChartzController());
    return DropdownSearch<String>(
      popupProps: PopupProps.dialog(
        fit: FlexFit.loose,
        showSelectedItems: true,
        showSearchBox: true,
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            hintText: 'Search Box',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      items: items,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: "Tahun",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      onChanged: (value) => controller.tahun.value = value!,
      selectedItem: '2020',
    );
  }
}
