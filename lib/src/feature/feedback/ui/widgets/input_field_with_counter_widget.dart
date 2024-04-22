import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show LengthLimitingTextInputFormatter;
import 'package:my_app/src/core/theme/theme.dart';

class InputFieldWithCounterWidget extends StatefulWidget {
  const InputFieldWithCounterWidget({
    super.key,
    required this.hint,
    this.enabled = true,
  });
  final String hint;
  final bool enabled;
  @override
  State<InputFieldWithCounterWidget> createState() =>
      _InputFieldWithCounterWidgetState();
}

class _InputFieldWithCounterWidgetState
    extends State<InputFieldWithCounterWidget> {
  final TextEditingController _controller = TextEditingController();
  int _characterCount = 0;
  int _maxLength = 140; // Максимальное количество символов

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateCharacterCount);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateCharacterCount() {
    setState(() {
      _characterCount = _controller.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Stack(
        children: [
          TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(140),
            ],
            controller: _controller,
            enabled: widget.enabled,
            decoration:
                Theme.of(context).inputDecorationTheme.defaultInput.copyWith(
                      hintStyle: const TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15,
                        color: AppThemeColor.gris,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.013,
                        horizontal: height * 0.023,
                      ).copyWith(right: width * 0.2),
                      hintText: widget.hint,
                    ),
          ),
          Positioned(
            bottom: height * 0.016,
            right: width * 0.04,
            child: Text(
              '$_characterCount/$_maxLength',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
