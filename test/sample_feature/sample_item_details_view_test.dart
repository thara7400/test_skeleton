import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_skeleton/src/sample_feature/sample_item_details_view.dart';

// ウィジェットの定義
const myWidget = MaterialApp(
  home: SampleItemDetailsView(),
);

void main() {
  group('【sample_item_details_view.dart】ウィジェットテスト', () {
    testWidgets('AppBar1つとCenter1つで構成されている', (WidgetTester tester) async {
      // ウィジェットの構築
      await tester.pumpWidget(myWidget);
      // AppBar
      expect(find.byType(AppBar), findsOneWidget);
      // Center
      expect(find.byType(Center), findsOneWidget);
    });
  });
}
