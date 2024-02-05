import 'package:flutter/material.dart';
import 'package:myapp/core/DI/dependancy_injection.dart';
import 'package:myapp/core/routing/app_router.dart';
import 'package:myapp/doc_app.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
