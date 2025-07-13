import 'package:equatable/equatable.dart';

enum PieceType { r, q, n, k, p, b, R, K, Q, N, B, P, empty }

class Piece extends Equatable {
  final int? row;
  final int? col;
  final PieceType pieceType;

  const Piece({this.row, this.col, required this.pieceType});
  factory Piece.invalid() {
    return Piece(row: -1, col: -1, pieceType: PieceType.empty);
  }

  @override
  List<Object?> get props => [row, col, pieceType];
}
