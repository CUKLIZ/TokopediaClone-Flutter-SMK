import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF03AC0E);
  static const Color primaryDark = Color(0xFF028A0B);
  static const Color accent = Color(0xFFFF7700);
  static const Color background = Color(0xFFF5F5F5);
  static const Color cardBg = Colors.white;
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color starColor = Color(0xFFFFBB00);
  static const Color divider = Color(0xFFE0E0E0);
}

class AppTextStyles {
  static const TextStyle productName = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static const TextStyle productPrice = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle rating = TextStyle(
    fontSize: 11,
    color: AppColors.textSecondary,
  );

  static const TextStyle categoryLabel = TextStyle(
    fontSize: 11,
    color: AppColors.textPrimary,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
}
