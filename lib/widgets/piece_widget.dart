// import 'package:chess_board/constants.dart';
import 'package:chess_board/piece.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PieceWidget extends ConsumerWidget {
  final int pos;
  final Piece piece;

  const PieceWidget({super.key, required this.pos, required this.piece});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final int row = pos ~/ numOfRows;
    // final int col = pos % numOfRows;
    return Center(
      child: Container(child: Text(getPieceSymbol(piece.pieceType))),
    );
  }
}

String getPieceSymbol(PieceType type) {
  switch (type) {
    case PieceType.k:
      return 'k';
    case PieceType.K:
      return 'K';
    case PieceType.q:
      return 'q';
    case PieceType.Q:
      return 'Q';
    case PieceType.r:
      return 'r';
    case PieceType.R:
      return 'R';
    case PieceType.b:
      return 'b';
    case PieceType.B:
      return 'B';
    case PieceType.n:
      return 'n';
    case PieceType.N:
      return 'N';
    case PieceType.p:
      return 'p';
    case PieceType.P:
      return 'P';
    case PieceType.empty:
      return '';
  }
}
