import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:my_app/src/core/theme/theme.dart';

class DropdownCustomWidgetNew extends StatefulWidget {
  const DropdownCustomWidgetNew({
    super.key,
    required this.listItems,
    required this.hint,
  });

  final List<String> listItems;
  final String hint;

  @override
  State<DropdownCustomWidgetNew> createState() =>
      _DropdownCustomWidgetNewState();
}

class _DropdownCustomWidgetNewState extends State<DropdownCustomWidgetNew> {
  String? selectedValue;

  // Styles
  final TextStyle dropdownHintTextStyle = const TextStyle(
    fontFamily: 'SourceSansPro',
    color: AppThemeColor.gris,
  );

  final TextStyle dropdownItemTextStyle = const TextStyle(
    fontFamily: 'SourceSansPro',
  );

  final IconStyleData dropdownIconStyleData = const IconStyleData(
    icon: Icon(
      Icons.expand_more_rounded,
    ),
    iconSize: 24,
    iconEnabledColor: AppThemeColor.blueColor,
    iconDisabledColor: Colors.grey,
  );

  final DropdownStyleData dropdownDropdownStyleData = DropdownStyleData(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.white,
    ),
    offset: const Offset(0, -2),
    scrollbarTheme: ScrollbarThemeData(
      radius: const Radius.circular(40),
      thickness: MaterialStateProperty.all(6),
      thumbVisibility: MaterialStateProperty.all(true),
    ),
  );

  final MenuItemStyleData dropdownMenuItemStyleData = const MenuItemStyleData(
    padding: EdgeInsets.only(left: 14, right: 14),
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;

      final ButtonStyleData dropdownButtonStyleData = ButtonStyleData(
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
      return DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
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
          selectedItemBuilder: (context) => widget.listItems
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        item,
                        style: dropdownItemTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ))
              .toList(),
          items: widget.listItems
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        item,
                        style: dropdownItemTextStyle,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: dropdownButtonStyleData,
          iconStyleData: dropdownIconStyleData,
          dropdownStyleData: dropdownDropdownStyleData,
          menuItemStyleData: dropdownMenuItemStyleData,
        ),
      );
    });
  }
}
