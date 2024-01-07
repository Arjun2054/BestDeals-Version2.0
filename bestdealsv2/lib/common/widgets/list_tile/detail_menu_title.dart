// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TDetailsMenuTile extends StatelessWidget {
  const TDetailsMenuTile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 20, color: TColors.primaryColor),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
