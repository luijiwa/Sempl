import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class DropdownCustomWidget extends StatelessWidget {
  const DropdownCustomWidget({
    super.key,
    required this.listItems,
    required this.hint,
  });
  final List<String> listItems;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    InputDecoration inputDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: height * 0.014, horizontal: height * 0.023),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
      ),
      hintStyle: const TextStyle(
        fontFamily: 'SourceSansPro',
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
      fillColor: Colors.white,
      filled: true,
    );

    return DropdownButtonFormField<String>(
      dropdownColor: Colors.white,
      isExpanded: false,
      iconSize: 24,
      icon:
          const Icon(Icons.expand_more_rounded, color: AppThemeColor.blueColor),
      items: listItems
          .map((item) => DropdownMenuItem(
              value: item,
              child: Text(item,
                  style: const TextStyle(fontFamily: 'SourceSansPro'))))
          .toList(),
      hint: Text(hint,
          style: const TextStyle(
              fontFamily: 'SourceSansPro', color: AppThemeColor.gris)),
      decoration: inputDecoration,
      value: null,
      onChanged: (_) {},
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Выберите из списка';
        }
        return null;
      },
      onTap: () {},
    );
  }
}
