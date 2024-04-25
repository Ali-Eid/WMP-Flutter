import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:wmp_project/domain/models/static_model/static_model.dart';
import 'package:wmp_project/presentations/resources/values_manager.dart';

import '../resources/color_manager.dart';

class CustomeDropdownWidget extends StatefulWidget {
  final void Function(StaticModel?)? onChanged;
  final List<StaticModel> items;
  final StaticModel? initValue;
  final String hintText;
  final String validatorText;

  const CustomeDropdownWidget(
      {super.key,
      this.onChanged,
      required this.items,
      this.initValue,
      required this.hintText,
      required this.validatorText});

  @override
  State<CustomeDropdownWidget> createState() => _CustomeDropdownWidgetState();
}

class _CustomeDropdownWidgetState extends State<CustomeDropdownWidget> {
  StaticModel? selectedValue;

  @override
  void initState() {
    selectedValue = widget.initValue;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField2<StaticModel>(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            isExpanded: true,
            decoration: InputDecoration(
              // Add Horizontal padding using menuItemStyleData.padding so it matches
              // the menu padding when button's width is not specified.
              contentPadding: EdgeInsets.symmetric(vertical: AppSizeH.s16),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizeR.s15),
                  borderSide:
                      const BorderSide(color: ColorManager.primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizeR.s15),
                  borderSide: BorderSide(
                      color: ColorManager.primaryColor, width: AppSizeW.s2)),
              // Add more decoration..
            ),
            hint: Text(
              widget.hintText,
              style: TextStyle(fontSize: AppSizeSp.s14),
            ),
            items: widget.items
                .map((item) => DropdownMenuItem<StaticModel>(
                      value: item,
                      child: Text(
                        item.name,
                        style: TextStyle(
                          fontSize: AppSizeSp.s14,
                        ),
                      ),
                    ))
                .toList(),
            validator: (value) {
              if (value == null) {
                return widget.validatorText;
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
              widget.onChanged!(value);
            },
            onSaved: (value) {
              setState(() {
                selectedValue = value;
              });
              widget.onChanged!(value);
            },
            buttonStyleData: ButtonStyleData(
              padding: EdgeInsets.only(right: AppSizeW.s8),
            ),
            iconStyleData: IconStyleData(
              icon: const Icon(Icons.arrow_drop_down,
                  color: ColorManager.primaryColor),
              iconSize: AppSizeSp.s24,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizeR.s15),
              ),
            ),
            menuItemStyleData: MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
            ),
          ),
        ),
      ],
    );
  }
}
