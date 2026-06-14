import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  Icon get icon => const FaIcon(FontAwesomeIcons.circleInfo);

  @override
  ToastificationType get type => ToastificationType.info;
}

final class SuccessToast extends ToastMessage {
  const SuccessToast(super.text);

  @override
  String get title => 'Success';

  @override
  Icon get icon => const FaIcon(FontAwesomeIcons.circleCheck);

  @override
  ToastificationType get type => ToastificationType.success;
}

final class ErrorToast extends ToastMessage {
  const ErrorToast(super.text);

  @override
  String get title => 'Error';

  @override
  Icon get icon => const FaIcon(FontAwesomeIcons.triangleExclamation);

  @override
  ToastificationType get type => ToastificationType.error;
}
