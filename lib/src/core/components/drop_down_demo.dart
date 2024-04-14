import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart'; // Импорт пакета dropdown_button2
import 'package:my_app/src/core/theme/theme.dart';

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
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        items: listItems
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    maxLines: 1,
                    style: const TextStyle(
                      fontFamily: 'SourceSansPro',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ))
            .toList(),
        hint: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                hint,
                style: const TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: AppThemeColor.gris,
                ),
              ),
            ),
            const Icon(Icons.expand_more_rounded,
                color: AppThemeColor.blueColor, size: 24),
            const SizedBox(
              width: 4,
            ),
          ],
        ),

        onChanged: (_) {},
        // decoration: inputDecoration,
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return 'Выберите из списка';
        //   }
        //   return null;
        // },
        // onTap: () {},
      ),
    );
  }
}
