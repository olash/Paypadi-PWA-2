import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/gen/colors.gen.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/file_upload_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class DocumentUploadScreen extends HookConsumerWidget {
  const DocumentUploadScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formRef = useRef(GlobalKey<FormState>());

    return AppScaffold(
      showAppBar: true,
      appBar: AppBar(
        title: Text(
          "Step 4 out of 5",
          style: context.textTheme.titleSmall,
        ),
        centerTitle: true,
      ),

      child: Form(
        key: formRef.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Values.v32.verticalSpacing,
            Text(
              "Document Upload",
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,
            Text(
              "Kindly upload the documents needed to help give you the best experience.",
              style: context.textTheme.bodyMedium,
            ),
            Values.v32.verticalSpacing,
            _DocumentUploadWidget(
              title: "Driver’s License (Front)",
            ),
            Values.v12.verticalSpacing,
            _DocumentUploadWidget(
              title: "Driver’s License (Back)",
            ),
            Values.v12.verticalSpacing,
            _DocumentUploadWidget(
              title: "Vehicle License",
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => submit(ref, formRef.value),
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }

  void submit(WidgetRef ref, GlobalKey<FormState> form) {
    if (!(form.currentState?.validate() ?? false)) return;

    ref.read(appRouterProvider).push(PayoutAccountRoute());
  }
}

class _DocumentUploadWidget extends HookConsumerWidget {
  const _DocumentUploadWidget({required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickedFile = ref.watch(filePickerControllerProvider);
    final hasPickedFile = useState<bool>(false);

    return Column(
      spacing: Values.v4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyLarge,
        ),
        AnimatedSwitcher(
          duration: Durations.medium4,
          child: !hasPickedFile.value
              ? _FilePickerWidget(
                  onPressed: () async {
                    await ref
                        .read(filePickerControllerProvider.notifier)
                        .pickFile();

                    if (pickedFile.value == null) return;
                    
                    hasPickedFile.value = true;
                  },
                )
              : _UploadFileWidget(
                  onPressed: () => hasPickedFile.value = false,
                ),
        ),
      ],
    );
  }
}

class _FilePickerWidget extends ConsumerWidget {
  const _FilePickerWidget({required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: context.screenWidth,
        padding: EdgeInsets.symmetric(
          vertical: Values.v16,
          horizontal: Values.v24,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey200),
          borderRadius: BorderRadius.circular(Values.v12),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(Values.v10),
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.grey300),
                borderRadius: BorderRadius.circular(Values.v8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: Values.v2,
                    offset: Offset(Values.zero, Values.v1),
                    color: AppColors.boxShadow.withValues(alpha: .05),
                  ),
                  BoxShadow(
                    offset: Offset(Values.zero, Values.v2),
                    color: AppColors.boxShadow.withValues(alpha: .05),
                  ),
                ],
              ),
              child: Icon(EvaIcons.cloud_upload_outline),
            ),
            Values.v4.verticalSpacing,
            RichText(
              text: TextSpan(
                text: "Click to upload ",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: ref.watch(appPrimaryColorProvider),
                ),
                children: [
                  TextSpan(
                    text: "or drag and drop",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColors.grey600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Values.v4.verticalSpacing,
            Text(
              "PDF, PNG, or JPG (max. 800x400px)",
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.grey600,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UploadFileWidget extends HookConsumerWidget {
  const _UploadFileWidget({required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(fileUploadControllerProvider);
    final fileName = state.file?.path.split('/').last ?? '';
    final extension = fileName.split('.').last.toUpperCase();
    final primaryColor = ref.watch(appPrimaryColorProvider);
    final isFailed = state.status == UploadStatus.failed;

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: Values.v16,
            horizontal: Values.v24,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey200),
            borderRadius: BorderRadius.circular(Values.v12),
          ),
          child: Row(
            spacing: Values.v12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              switch (extension) {
                'pdf' => AppAssets.icons.pdfIcon.svg(),
                'png' => AppAssets.icons.pngIcon.svg(),
                'jpg' => AppAssets.icons.jpgIcon.svg(),
                _ => SizedBox.shrink(),
              },
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fileName,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColors.grey700,
                    ),
                  ),
                  if (state.status == UploadStatus.uploading) ...[
                    Row(
                      spacing: Values.v4,
                      children: [
                        Text(
                          state.formattedProgress,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColors.grey600,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColors.grey300,
                          ),
                        ),
                        _FileUploadStatusWidget(uploadStatus: state.status),
                      ],
                    ),
                    Values.v4.verticalSpacing,
                    Row(
                      spacing: Values.v12,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: LinearProgressIndicator(
                              value: state.progress,
                              minHeight: 6,
                              backgroundColor: AppColors.grey200,
                              valueColor: AlwaysStoppedAnimation(
                                isFailed ? Colors.red : primaryColor,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '${(state.progress * 100).toInt()}%',
                          style: context.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: Values.v8,
          right: Values.v8,
          child: GestureDetector(
            onTap: () {
              onPressed();
            },
            child: Icon(
              EvaIcons.trash_2_outline,
              color: AppColors.grey400,
            ),
          ),
        ),
      ],
    );
  }
}

class _FileUploadStatusWidget extends StatelessWidget {
  const _FileUploadStatusWidget({required this.uploadStatus});
  final UploadStatus uploadStatus;

  @override
  Widget build(BuildContext context) {
    final statusText = switch (uploadStatus) {
      UploadStatus.uploading => 'Uploading...',
      UploadStatus.complete => 'Complete',
      UploadStatus.failed => 'Failed',
      _ => '',
    };

    return Row(
      spacing: Values.v4,
      children: [
        switch (uploadStatus) {
          UploadStatus.uploading => Icon(
            EvaIcons.loader_outline,
            color: AppColors.grey500,
          ),
          UploadStatus.complete => Icon(
            EvaIcons.checkmark_circle,
            color: AppColors.success,
          ),
          UploadStatus.failed => Icon(
            EvaIcons.close_circle,
            color: AppColors.failure,
          ),
          _ => SizedBox.shrink(),
        },
        if (statusText.isNotEmpty)
          Text(
            statusText,
            style: context.textTheme.bodySmall?.copyWith(
              color: switch (uploadStatus) {
                UploadStatus.uploading => AppColors.grey500,
                UploadStatus.complete => AppColors.success,
                UploadStatus.failed => AppColors.failure,
                _ => AppColors.grey500,
              },
            ),
          ),
      ],
    );
  }
}
