import 'package:flutter/material.dart';
import 'package:flutter_assets_pkg/flutter_assets_pkg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  testWidgets('ShowAssetsImage displays CachedNetworkImage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ShowAssetsImage<String>(
            image: 'https://example.com/test.jpg',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );

    expect(find.byType(CachedNetworkImage), findsOneWidget);

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('ShowAssetsImage test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ShowAssetsImage<String>(image: 'https://example.com/test.jpg'),
        ),
      ),
    );

    await tester.pump();

    expect(find.byType(CachedNetworkImage), findsOneWidget);
  });
}
