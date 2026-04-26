import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:toastification/toastification.dart';

sealed class ToastMessage {
  const ToastMessage(this.text);
  final String text;

  Icon get icon;
  String get title;
  ToastificationType get type;
}

final class InfoToast extends ToastMessage {
  const InfoToast(super.text);

  @override
  String get title => 'Info';

  @override
  Icon get icon => const Icon(Iconsax.info_circle_outline);

  @override
  ToastificationType get type => ToastificationType.info;
}

final class SuccessToast extends ToastMessage {
  const SuccessToast(super.text);

  @override
  String get title => 'Success';

  @override
  Icon get icon => const Icon(Iconsax.tick_circle_outline);

  @override
  ToastificationType get type => ToastificationType.success;
}

final class ErrorToast extends ToastMessage {
  const ErrorToast(super.text);

  @override
  String get title => 'Error';

  @override
  Icon get icon => const Icon(Iconsax.danger_outline);

  @override
  ToastificationType get type => ToastificationType.error;
}
