import 'controller/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MessagesDialog extends StatelessWidget {
  MessagesDialog(this.controller);

  MessagesController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      width: 331,
      focusNode: FocusNode(),
      controller: controller.inputController,
      hintText: "msg_label_text_area".tr,
      variant: TextFormFieldVariant.OutlineBluegray90019,
      shape: TextFormFieldShape.RoundedBorder6,
      padding: TextFormFieldPadding.PaddingT14,
      fontStyle: TextFormFieldFontStyle.AsapRomanRegular14Bluegray900b2,
      textInputAction: TextInputAction.done,
      maxLines: 9,
    );
  }
}
