import 'package:flutter/material.dart';

import 'fix_logic.dart';

class FixAndroidPopBug extends StatelessWidget {
  const FixAndroidPopBug({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    final navigator =
        Navigator.of(context); // or any other way you access your navigator
    return PopScope(
      canPop: !navigator.androidSpecialPopTreatment,
      child: NavigatorPopHandler(
        enabled: navigator.androidSpecialPopTreatment,
        onPop: navigator.handleAndroidSpecialPop,
        child: child,
      ),
    );
  }
}
