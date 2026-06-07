import 'package:flutter/material.dart';
import 'package:flutter_assets_pkg/flutter_assets_pkg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  testWidgets('ShowAssetsImage displays CachedNetworkImage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FlutterAssetsImage(
            imagePath: BkashAssets.bkash_to_bank,
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
      MaterialApp(
        home: Scaffold(
          body: FlutterAssetsImage(imagePath: BkashAssets.bkash_to_bank),
        ),
      ),
    );

    await tester.pump();

    expect(find.byType(CachedNetworkImage), findsOneWidget);
  });
}
