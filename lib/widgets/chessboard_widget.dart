import 'package:chess_board/utils.dart';
import 'package:chess_board/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChessBoard extends ConsumerWidget {
  const ChessBoard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final double boardSize = getBoardsize(size);
    return Center(
      child: SizedBox(
        width: boardSize,
        height: boardSize,
        child: TableWidget(boardSize: boardSize),
      ),
    );
  }
}
