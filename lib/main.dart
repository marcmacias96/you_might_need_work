import 'package:flutter/material.dart';
import 'package:you_might_need_work/bootstrap.dart';
import 'package:you_might_need_work/features/app/app.dart';

void main() async {
  await bootstrap(
    () => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  );
}
