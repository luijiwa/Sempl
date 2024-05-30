import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:sempl/src/core/theme/theme.dart';

class DropdownCustomWidgetNew extends StatefulWidget {
  const DropdownCustomWidgetNew({
    super.key,
    required this.listItems,
    required this.hint,
    required this.onChanged,
    this.initialValue, // Add initialValue parameter
  });

  final List<String> listItems;
  final String hint;
  final ValueChanged<String?> onChanged;
  final String? initialValue; // Add initialValue field

  @override
  State<DropdownCustomWidgetNew> createState() =>
      _DropdownCustomWidgetNewState();
}

class _DropdownCustomWidgetNewState extends State<DropdownCustomWidgetNew> {
  String? selectedValue;

  // Styles
  final TextStyle dropdownHintTextStyle = const TextStyle(
    color: AppThemeColor.gris,
  );

  final TextStyle dropdownItemTextStyle = const TextStyle();

  final IconStyleData dropdownIconStyleData = const IconStyleData(
    icon: Icon(
      Icons.expand_more_rounded,
    ),
    iconSize: 24,
    iconEnabledColor: AppThemeColor.blueColor,
    iconDisabledColor: Colors.grey,
  );

  final DropdownStyleData dropdownDropdownStyleData = DropdownStyleData(
    elevation: 0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      border: Border.all(color: AppThemeColor.gris, width: 0.5),
    ),
    offset: const Offset(0, -2),
    scrollbarTheme: ScrollbarThemeData(
      radius: const Radius.circular(20),
      thickness: WidgetStateProperty.all(6),
      thumbVisibility: WidgetStateProperty.all(true),
    ),
  );

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    final List<DropdownMenuItem<String>> menuItems = [];
    for (final String item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
              child: Text(
                item,
                style: const TextStyle(fontSize: 15, height: 1.1),
              ),
            ),
          ),
          // If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: SizedBox.shrink(),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<DropdownMenuItem<String>> _listChecked(List<String> items) {
    final List<DropdownMenuItem<String>> menuItems = [];
    for (final String item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  item,
                  style: dropdownItemTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          // If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: SizedBox.shrink(),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomItemsHeights() {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (widget.listItems.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(48);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        itemsHeights.add(0);
      }
    }
    return itemsHeights;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      final MenuItemStyleData dropdownMenuItemStyleData = MenuItemStyleData(
        // height: 48,
        customHeights: _getCustomItemsHeights(),
        padding: const EdgeInsets.symmetric().copyWith(
          left: 14,
          right: 14,
        ),
      );
      final ButtonStyleData dropdownButtonStyleData = ButtonStyleData(
        // height: height * 0.05,
        padding: EdgeInsets.symmetric(
                vertical: height * 0.0, horizontal: height * 0.01)
            .copyWith(right: width * 0.05),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: AppThemeColor.gris, width: 0.5),
          color: Colors.white,
        ),
      );
      final maxHeight = constraints.maxHeight.toDouble();
      final maxWidth = constraints.maxWidth.toDouble();
      return SizedBox(
        height: width * 0.123, // 0.12216,

        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField2<String>(
            validator: (value) => value == null ? 'Field is required' : null,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide:
                    BorderSide(width: 0.5, color: AppThemeColor.blueColor),
              ),
              hintStyle: const TextStyle(
                fontSize: 14,
                color: AppThemeColor.gris,
              ),
              disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(width: 0.5, color: AppThemeColor.rose),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(width: 0.5, color: AppThemeColor.rose),
              ),
              alignLabelWithHint: true,
              filled: true,
              fillColor: Colors.white,
              errorStyle: const TextStyle(fontSize: 0),
              contentPadding: EdgeInsets.symmetric(
                  vertical: width * 0.02803813559,
                  horizontal: width * 0.0496059322),
            ),
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.hint,
                    style: dropdownHintTextStyle,
                  ),
                ),
              ],
            ),
            selectedItemBuilder: (context) =>
                _listChecked(widget.listItems).toList(),
            items: _addDividersAfterItems(widget.listItems),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
              widget.onChanged(value);
            },
            iconStyleData: dropdownIconStyleData,
            dropdownStyleData: dropdownDropdownStyleData,
            menuItemStyleData: dropdownMenuItemStyleData,
          ),
        ),
      );
    });
  }
}
