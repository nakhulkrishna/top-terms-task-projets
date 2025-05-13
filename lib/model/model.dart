import 'package:flutter/material.dart';

class SettingsItem {
  final String title;
  final String subtitle;
  final IconData icons;
  final Color color;

  SettingsItem(
    this.color, {
    required this.title,
    required this.subtitle,
    required this.icons,
  });
}
