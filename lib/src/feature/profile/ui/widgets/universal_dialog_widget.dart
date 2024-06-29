import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class UniversalDialogWidget extends StatelessWidget {
  final String title;
  final String? description;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const UniversalDialogWidget({
    super.key,
    required this.title,
    this.description,
    required this.confirmButtonText,
    required this.cancelButtonText,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 22),
      backgroundColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
          top: width * 0.04581,
          bottom: width * 0.0509,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title.toUpperCase(),
              maxLines: 2,
              style: Theme.of(context).textTheme.appProfileTitle,
            ),
            if (description != null) SizedBox(height: height * 0.01),
            if (description != null)
              Text(
                description!,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width > 320 ? 15 : 12,
                  height: 1.5,
                ),
              ),
            SizedBox(height: height * 0.02),
            SizedBox(
              height: 0.1186228814 * width,
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: onConfirm,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: AppThemeColor.blueColor,
                  ),
                ),
                child: Text(
                  confirmButtonText,
                  style: TextStyle(
                    fontSize: width > 320 ? 14 : 12,
                    color: AppThemeColor.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.005),
            SizedBox(
              height: 0.1186228814 * width,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: onCancel,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF99BFD4),
                ),
                child: Text(
                  cancelButtonText,
                  style: TextStyle(
                    fontSize: width > 320 ? 14 : 12,
                    color: AppThemeColor.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
