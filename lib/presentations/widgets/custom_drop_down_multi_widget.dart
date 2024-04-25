import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../domain/models/song_models/song_model.dart';
import '../../domain/models/static_model/static_model.dart';
import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class CustomMultiDropDownWidget extends StatefulWidget {
  final List<SongModel> items;

  final String hintText;
  final void Function(List<SongModel> selectedItems) onChanged;
  final String? Function(SongModel?)? validator;
  final List<SongModel>? values;
  const CustomMultiDropDownWidget({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.validator,
    this.values,
    required this.items,
  });

  @override
  State<CustomMultiDropDownWidget> createState() =>
      _CustomMultiDropDownWidgetState();
}

class _CustomMultiDropDownWidgetState extends State<CustomMultiDropDownWidget> {
  List<SongModel> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField2<SongModel>(
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
            items: widget.items.map((item) {
              return DropdownMenuItem<SongModel>(
                value: item,
                //disable default onTap to avoid closing menu when selecting an item
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, menuSetState) {
                    final isSelected = selectedItems.contains(item);
                    return InkWell(
                      onTap: () {
                        isSelected
                            ? selectedItems.remove(item)
                            : selectedItems.add(item);
                        //This rebuilds the StatefulWidget to update the button's text
                        setState(() {});
                        //This rebuilds the dropdownMenu Widget to update the check mark
                        menuSetState(() {});

                        widget.onChanged(selectedItems);
                      },
                      child: Container(
                        height: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                        child: Row(
                          children: [
                            isSelected
                                ? const Icon(Icons.check_box_outlined)
                                : const Icon(Icons.check_box_outline_blank),
                            SizedBox(width: AppSizeW.s16),
                            Expanded(
                              child: Text(
                                item.title,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
            value: selectedItems.isEmpty ? null : selectedItems.last,
            validator: widget.validator,
            onChanged: (value) {},
            selectedItemBuilder: (context) {
              return widget.items.map(
                (item) {
                  return Container(
                    height: AppSizeH.s48,
                    alignment: AlignmentDirectional.centerStart,
                    child: OverflowBox(
                      minHeight: 0,
                      maxHeight: double.infinity,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minWidth: AppSizeW.s358),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: selectedItems
                                    .map((e) => Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: AppSizeH.s24,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s8),
                                                decoration: BoxDecoration(
                                                    color: Colors.blue
                                                        .withAlpha(25),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            AppSizeR.s24)),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      FittedBox(
                                                        child: Text(
                                                          e.title,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .titleSmall,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: AppSizeW.s12,
                                                      ),
                                                      InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              selectedItems
                                                                  .remove(e);
                                                              widget.onChanged(
                                                                  selectedItems);
                                                            });
                                                          },
                                                          child: Icon(
                                                              Icons.close,
                                                              size:
                                                                  AppSizeSp.s14,
                                                              color:
                                                                  Colors.black))
                                                    ])),
                                            SizedBox(
                                              width: AppSizeW.s4,
                                            )
                                          ],
                                        ))
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).toList();
            },
            buttonStyleData: ButtonStyleData(
              padding: EdgeInsets.only(right: AppSizeW.s8),
            ),
            iconStyleData: IconStyleData(
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
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
