import 'package:chess_board/keys.dart';
import 'package:chess_board/piece.dart';
import 'package:chess_board/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../common.dart';

void main() {
  group('Apply Turn By Tapping Piece:', () {
    testWidgets('Piece Should Be Found In Valid Square', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(getBoard());
      final WidgetRef ref = getBoardRef(tester);
      List<List<PieceType>> boardState = ref.read(boardStateProvider);

      expect(boardState[1][1], isNot(PieceType.empty));
      await tapPumpAndSettle(tester, square_1_1);
      await tapPumpAndSettle(tester, square_3_1);
      boardState = ref.read(boardStateProvider);
      expect(boardState[1][1], PieceType.empty);
      expect(boardState[3][1], isNot(PieceType.empty));
    });

    testWidgets('Piece Should Not Be Found In Invalid Square', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(getBoard());
      final WidgetRef ref = getBoardRef(tester);
      List<List<PieceType>> boardState = ref.read(boardStateProvider);

      expect(boardState[1][1], isNot(PieceType.empty));
      await tapPumpAndSettle(tester, square_1_1);
      await tapPumpAndSettle(tester, square_3_1);
      boardState = ref.read(boardStateProvider);
      expect(boardState[3][7], PieceType.empty);
    });
  });
}
