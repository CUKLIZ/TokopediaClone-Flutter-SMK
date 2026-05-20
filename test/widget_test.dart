import 'package:flutter_test/flutter_test.dart';
import 'package:tokped/main.dart';

void main() {
  testWidgets('App loads and shows home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const TokopediaCloneApp());
    expect(find.text('Special Offers'), findsOneWidget);
  });
}