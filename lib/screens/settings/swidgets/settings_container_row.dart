import 'package:flutter/material.dart';

class SettingsContainerRow extends StatelessWidget {
  const SettingsContainerRow({
    super.key,
    required this.leadingIconUrl,
    required this.settingsText,
    this.trailingText = "",
    required this.trailingIcon,
  });

  final String leadingIconUrl;
  final String settingsText;
  final String trailingText;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          leadingIconUrl,
          height: 45,
          width: 45,
        ),
        SizedBox(width: 10),
        Text(
          settingsText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
        ),
        Spacer(),
        Text(
          trailingText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
        ),
        SizedBox(width: 10),
        Icon(
          trailingIcon,
          size: 15,
        ),
      ],
    );
  }
}
