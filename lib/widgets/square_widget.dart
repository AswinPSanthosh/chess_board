import 'package:chess_board/constants.dart';
import 'package:chess_board/piece.dart';
import 'package:chess_board/square.dart';
import 'package:chess_board/utils.dart';
import 'package:chess_board/widgets/piece_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SquareWidget extends ConsumerWidget {
  final bool isLight;
  final int pos;
  final double boardSize;
  final Square square;

  SquareWidget({
    super.key,
    required this.isLight,
    required this.pos,
    required this.boardSize,
  }) : square = Square(
         row: pos ~/ numOfRows,
         col: pos % numOfRows,
         piece: Piece(pieceType: board[pos ~/ numOfRows][pos % numOfRows]),
       );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double sqaureSize = getSquareSize(boardSize);
    return Container(
      width: sqaureSize,
      height: sqaureSize,
      decoration: BoxDecoration(
        color: isLight ? const Color(0xFFF0D9B5) : const Color(0xFFB58863),
      ),
      child: PieceWidget(pos: pos, piece: square.piece),
    );
  }
}
