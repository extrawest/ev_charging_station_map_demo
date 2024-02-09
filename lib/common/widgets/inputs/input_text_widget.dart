import 'package:flutter/material.dart';

import '../../../features/theme/theme_info.dart';

class InputTextWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final FocusNode? focus;
  final bool isReadonly;
  final void Function()? onTapCallback;
  final void Function(String)? onChangedCallback;
  final void Function()? onCancelTapCallback;

  const InputTextWidget({
    super.key,
    required this.hintText,
    this.onTapCallback,
    this.onChangedCallback,
    required this.controller,
    this.focus,
    this.onCancelTapCallback,
    this.isReadonly =false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focus,
      readOnly: isReadonly,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search, color: greyIcon, size: 20),
        alignLabelWithHint: true,
        suffixIcon: onCancelTapCallback != null
            ? IconButton(
                icon: const Icon(Icons.close, color: greyIcon, size: 20),
                onPressed: () {
                  controller.clear();
                  onCancelTapCallback?.call();
                },
              )
            : const SizedBox(),
      ),
      onTap: () {
        onTapCallback?.call();
      },
      onChanged: onChangedCallback,
    );
  }
}
