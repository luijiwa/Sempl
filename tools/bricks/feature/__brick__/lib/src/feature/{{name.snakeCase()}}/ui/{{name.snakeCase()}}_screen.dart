import 'package:flutter/material.dart';

/// {@template {{name.snakeCase()}}_screen.class}
/// {{name.pascalCase()}}Screen.
/// {@endtemplate}

class {{name.pascalCase()}}Screen extends StatefulWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  State<{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraint) => const CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverAppBar(
                  title: Text('{{name.pascalCase()}}'),
                ),
              ],
            ),
          ),
        ),
      );
}