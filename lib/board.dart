import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/tic_tac_controller.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TicTacController ticTacController = Get.put<TicTacController>(
      TicTacController(),
    );
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            color: Colors.red,
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFF0000),
                Color(0xff0080F6),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 17.0,
            ),
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 0.9,
              mainAxisSpacing: 1,
              children: List.generate(
                9,
                (index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      ticTacController.click(index);
                    },
                    child: Obx(
                      () => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        ),
                        child: ticTacController.board[index] != ""
                            ?  Image.asset("assets/images/${ticTacController.board[index]}.png")
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
