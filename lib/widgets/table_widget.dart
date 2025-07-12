import 'package:chess_board/constants.dart';
import 'package:chess_board/widgets/square_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TableWidget extends ConsumerWidget {
  final double boardSize;

  const TableWidget({super.key, required this.boardSize});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: List.generate(numOfCols, (row) {
        return TableRow(
          children: List.generate(numOfRows, (col) {
            bool isLight = (row + col) % 2 == 0;
            final int pos = row * numOfRows + col;
            return SquareWidget(
              isLight: isLight,
              boardSize: boardSize,
              pos: pos,
            );
          }),
        );
      }),
    );
  }
}
