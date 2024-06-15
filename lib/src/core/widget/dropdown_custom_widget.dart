import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

@Deprecated('Use DropdownCustomWidgetNew')
class DropdownCustomWidget extends StatelessWidget {
  const DropdownCustomWidget({
    required this.listItems, required this.hint, super.key,
  });
  final List<String> listItems;
  final String hint;

  @override
  Widget build(BuildContext context) => DropdownButtonFormField<String>(
      dropdownColor: Colors.white,
      isExpanded: true,
      icon:
          const Icon(Icons.expand_more_rounded, color: AppThemeColor.blueColor),
      items: listItems
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(
                item,
                maxLines: 1,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )
          .toList(),
      hint: Text(hint,
          style: const TextStyle(
            color: AppThemeColor.gris,
          ),),
      decoration: inputDecoration,
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
