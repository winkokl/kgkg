import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_circularprogress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class BottomWidget extends StatelessWidget {
  final VoidCallback onScrollEnd;
  final Widget loadingWidget;
  const BottomWidget({
    super.key,
    required this.onScrollEnd,
    this.loadingWidget = const CustomCircularProgressIndicator(),
  });

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: key ?? const Key('Bottom'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.1) {
          onScrollEnd();
        }
      },
      child: loadingWidget,
    );
  }
}
