import 'package:get/get.dart';

class TicTacController extends GetxController {
  List namePlayer = ['o', 'X'];
  final List<String> board = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ].obs;

  void click(int index) {
    if (board[index] == "") {
      board[index] = namePlayer[0];
     namePlayer = namePlayer.reversed.toList();
    }
  }
}
