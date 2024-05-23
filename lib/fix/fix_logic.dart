import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension AndroidPopBugWorkaround on NavigatorState {
  static const platform = MethodChannel('example.app.android.channel');

  bool get androidSpecialPopTreatment =>
      Platform.isAndroid && canPop() == false;

  void handleAndroidSpecialPop() {
    platform.invokeMethod<int>('putAppInBackground');
  }
}
