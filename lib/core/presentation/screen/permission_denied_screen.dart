import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/features/home/application/home_notifier.dart';

class PermissionDeniedScreen extends StatelessWidget {
  const PermissionDeniedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Permission Denied')),
      body: const PermissionDeniedWidget(),
    );
  }
}

class PermissionDeniedWidget extends ConsumerWidget {
  const PermissionDeniedWidget({
    super.key,
    this.onRetry,
  });
  final VoidCallback? onRetry;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/no_permission.png'),
          RefreshButton(
            onPressed: onRetry ?? () => ref.invalidate(userInfoProvider),
          ),
        ],
      ),
    );
  }
}
