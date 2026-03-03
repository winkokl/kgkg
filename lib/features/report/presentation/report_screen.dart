import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/screen/permission_denied_screen.dart';

class ReportScreen extends HookConsumerWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasReportModuleAccess = useState<List<String>>([]);

    // Update when permissionProvider changes
    useEffect(() {
      hasReportModuleAccess.value = ref.read(permissionProvider.notifier).hasAccessToModule(MODULE.reports);
      return null;
    }, [ref.watch(permissionProvider)]);

    if (hasReportModuleAccess.value.isEmpty) return const PermissionDeniedScreen();

    return const Center(child: Text("Comming Soon..."));
  }
}
