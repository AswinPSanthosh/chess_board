import 'package:chess_board/piece.dart';

class Square {
  final int row;
  final int col;
  final Piece piece;

  Square({required this.row, required this.col, required this.piece});
}
