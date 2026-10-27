import 'package:flutter_test/flutter_test.dart';

import 'package:calla_lab_act2/main.dart';

void main() {
  testWidgets('Water Tracker smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and key elements appear.
    expect(find.text('Water Tracker'), findsOneWidget);
    expect(find.text('Stay Hydrated!'), findsOneWidget);
    expect(find.text('Drink water regularly'), findsOneWidget);
  });
}
