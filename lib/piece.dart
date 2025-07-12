enum PieceType { r, q, n, k, p, b, R, K, Q, N, B, P, empty }

class Piece {
  final int? row;
  final int? col;
  final PieceType pieceType;

  Piece({this.row, this.col, required this.pieceType});
}
