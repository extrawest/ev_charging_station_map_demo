import 'package:flutter/material.dart';

import '../../theme/theme_info.dart';

class MapIconButton extends StatelessWidget {
  const MapIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        onTap?.call();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      icon: Icon(
        icon,
        color: greyIcon,
      ),
    );
  }
}
