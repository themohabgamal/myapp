import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/DI/dependancy_injection.dart';
import 'package:myapp/core/routing/app_router.dart';
import 'package:myapp/doc_app.dart';

void main() async {
  setUpGetIt();
  // Fixing Bug: Text is Hidden in production release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
