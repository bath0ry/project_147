// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_file/open_file.dart';
import 'package:project_147/home/home_page.dart';

import 'package:project_147/main.dart';
import 'package:project_147/view/pages/form_page.dart';
import 'package:project_147/view/pages/splash_loading_screen.dart';

void main() {
  testWidgets('Finds FloatingActionButton', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MyHomePage(),
    ));

    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
