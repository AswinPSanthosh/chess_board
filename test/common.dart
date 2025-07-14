import 'package:chess_board/widgets/chessboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

Widget getBoard() {
  return ProviderScope(
    child: MaterialApp(home: Scaffold(body: ChessBoard())),
  );
}

Future<void> tapPumpAndSettle(WidgetTester tester, Key key) async {
  await tester.tap(find.byKey(key));
  await tester.pumpAndSettle();
}

WidgetRef getBoardRef(WidgetTester tester) {
  return tester.element<ConsumerStatefulElement>(find.byType(ChessBoard));
}
