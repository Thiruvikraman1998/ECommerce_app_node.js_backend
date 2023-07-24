import 'package:flutter/material.dart';
import 'package:shopnow/utils/app_colors.dart';
import 'package:shopnow/utils/bottom_sheet.dart';

void openLoginModal(BuildContext context) {
  showModalBottomSheet(
    isDismissible: false,
    isScrollControlled: true,
    showDragHandle: true,
    backgroundColor: AppColors.bgcolorLight,
    context: context,
    builder: (loginContext) {
      return LoginModal();
    },
  );
}
