import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/choose_screen.dart';
import 'package:xo/panorama.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Image.asset('assets/images/Tic Tac Toe.png'),
              const SizedBox(
                height: 84.0,
              ),
              Image.asset(
                'assets/images/Group 45.png',
              ),
              const SizedBox(
                height: 75.38,
              ),
              SizedBox(
                width: 204,
                height: 49,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Get.to(
                      () => ChoseScreen(),
                      transition: Transition.upToDown,
                      duration: const Duration(
                        milliseconds: 800,
                      ),
                    );
                  },
                  child: const Text(
                    "Let’s play",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
