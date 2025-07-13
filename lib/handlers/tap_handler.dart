import 'package:chess_board/piece.dart';
import 'package:chess_board/providers.dart';
import 'package:chess_board/square.dart';
import 'package:chess_board/widgets/square_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void onTapFn(SquareWidget squareWidget, WidgetRef ref) {
  final bool isFirstTap = ref.read(firstTapProvider);
  final Square square = squareWidget.square;
  final Square? selectedSquare = ref.read(selectedSquareProvider);

  if (isFirstTap) {
    if (square.piece.pieceType != PieceType.empty) {
      ref.read(selectedSquareProvider.notifier).state = square;
      ref.read(firstTapProvider.notifier).state = false;
    }
  } else {
    if (selectedSquare != null) {
      final currentBoard = ref.read(boardStateProvider.notifier);
      final newBoard = currentBoard.state
          .map((row) => List<PieceType>.from(row))
          .toList();

      newBoard[square.row][square.col] = selectedSquare.piece.pieceType;
      newBoard[selectedSquare.row][selectedSquare.col] = PieceType.empty;

      currentBoard.state = newBoard;
    }

    ref.read(selectedSquareProvider.notifier).state = Square.invalid();
    ref.read(firstTapProvider.notifier).state = true;
  }
}
