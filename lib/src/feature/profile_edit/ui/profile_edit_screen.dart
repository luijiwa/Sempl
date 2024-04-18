import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            AppBar(
              leading: const CustomBackButton(),
              title: const Text('SEMPL!'),
            ),
            const AutoSizeText('Изменения будут сохранены в профиле '),
            const AutoSizeText('Персональная информация'),
          ],
        ),
      ),
    );
  }
}
