import 'package:equatable/equatable.dart';
import 'package:chess_board/piece.dart';

// ignore: must_be_immutable
class Square extends Equatable {
  final int row;
  final int col;
  Piece piece;

  Square({required this.row, required this.col, required this.piece});

  factory Square.invalid() {
    return Square(row: -1, col: -1, piece: Piece.invalid());
  }

  @override
  List<Object?> get props => [row, col, piece];
}
