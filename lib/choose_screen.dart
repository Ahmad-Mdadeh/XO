import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/single_screen.dart';

class ChoseScreen extends StatelessWidget {
  ChoseScreen({Key? key}) : super(key: key);
  final RxBool isHighlighted1 = true.obs;
  final RxBool isHighlighted2 = true.obs;
  final RxBool isHighlighted3 = true.obs;
  final RxBool isHighlighted4 = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Obx(
        () => Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 26.0,
                      ),
                      child: Text(
                        "Choose Game",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 7.0,
                        left: 33.0,
                      ),
                      child: Container(
                        width: 130,
                        height: 9.61,
                        decoration: BoxDecoration(
                          color: const Color(0XffFF1212),
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 85.0,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onHighlightChanged: (value) =>
                        isHighlighted1(!(isHighlighted1.value)),
                    onTap: () {
                      Get.to(
                        () => const SingleScreen(),
                        transition: Transition.circularReveal,
                        duration: const Duration(
                          milliseconds: 1500,
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2.0,
                              blurRadius: 9.0,
                            )
                          ]),
                      child: Image.asset(
                        'assets/images/SINGLEPLAYER.png',
                        height: isHighlighted1.value ? 172 : 169,
                        width: isHighlighted1.value ? 160 : 157,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onHighlightChanged: (value) =>
                          isHighlighted2(!(isHighlighted2.value)),
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2.0,
                              blurRadius: 9.0,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/MULTIPLAYER.png',
                          height: isHighlighted2.value ? 172 : 169,
                          width: isHighlighted2.value ? 161 : 158,
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 25.0,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onHighlightChanged: (value) =>
                        isHighlighted3(!(isHighlighted3.value)),
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2.0,
                            blurRadius: 9.0,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/CHALLENGES.png',
                        height: isHighlighted3.value ? 163 : 160,
                        width: isHighlighted3.value ? 160 : 157,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onHighlightChanged: (value) =>
                        isHighlighted4(!(isHighlighted4.value)),
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2.0,
                            blurRadius: 9.0,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/SkinStore.png',
                        height: isHighlighted4.value ? 163 : 160,
                        width: isHighlighted4.value ? 161 : 158,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
