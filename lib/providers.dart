import 'package:chess_board/constants.dart';
import 'package:chess_board/piece.dart';
import 'package:chess_board/square.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firstTapProvider = StateProvider<bool>((ref) {
  return true;
});

final selectedSquareProvider = StateProvider<Square>((ref) {
  return Square.invalid();
});

final boardStateProvider = StateProvider<List<List<PieceType>>>((ref) {
  return board;
});
