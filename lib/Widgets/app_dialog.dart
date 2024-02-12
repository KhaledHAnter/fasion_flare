import 'package:fasion_flare_ggpp/Core/app_colors/app_colors.dart';
import 'package:fasion_flare_ggpp/Widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'app_button.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    required this.massage,
    required this.confirmTitle,
    required this.onConfirm,
    this.onCancel,
  });

  static void show(
    BuildContext context, {
    required String massage,
    String confirmTitle = "Save",
    required void Function() onConfirm,
    void Function()? onCancel,
  }) {
    showDialog(
      barrierDismissible: false,
      barrierColor: AppColors.white.withOpacity(0.1),
      context: context,
      builder: (context) => AppDialog(
        massage: massage,
        confirmTitle: confirmTitle,
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
    );
  }

  final String massage;
  final String confirmTitle;
  final void Function() onConfirm;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              FontAwesomeIcons.circleInfo,
              color: AppColors.yellow,
              size: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 24,
              ),
              child: AppText(
                title: massage,
                fontSize: 23,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AppButton(
                    title: "Discard",
                    color: AppColors.green,
                    onTap: () {
                      if (onCancel == null){
                        Navigator.pop(context);
                        return;
                      }
                      onCancel!();
                    }
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: AppButton(
                    title: confirmTitle,
                    color: AppColors.green,
                    onTap: onConfirm,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
