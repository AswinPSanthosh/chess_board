import 'package:chess_board/constants.dart';
import 'package:flutter/rendering.dart';

double getSquareSize(double boardSize) {
  return boardSize / numOfRows;
}

double getBoardsize(Size size) {
  final double screenSize = size.width > size.height ? size.height : size.width;
  final double boardSize = screenSize * boardSizeFactor;
  return boardSize;
}
