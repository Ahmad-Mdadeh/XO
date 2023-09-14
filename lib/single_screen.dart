import 'package:flutter/material.dart';
import 'package:xo/board.dart';

class SingleScreen extends StatelessWidget {
  const SingleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 35.0,
        ),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Tic Tac Toe",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w600),
              ),
              // Image.asset('assets/images/Tic Tac.png'),
              Padding(
                padding: const EdgeInsets.only(
                  top: 11.0,
                ),
                child: Container(
                  width: 285,
                  height: 12,
                  decoration: BoxDecoration(
                    color: const Color(0XffFF1212),
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/You.png'),
                      Image.asset('assets/images/computer.png'),
                    ],
                  ),
                  Positioned(
                    top: 13.0,
                    left: MediaQuery.of(context).size.width * 0.6,
                    child: Image.asset(
                      'assets/images/image 8.png',
                      width: 85,
                      height: 85,
                    ),
                  ),
                  Positioned(
                    top: 135.0,
                    left: MediaQuery.of(context).size.width * 0.67,
                    child: Image.asset('assets/images/OO.png'),
                  ),
                  Positioned(
                    top: 135.0,
                    left: MediaQuery.of(context).size.width * 0.25,
                    child: Image.asset(
                      'assets/images/XX.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 59.11,
              ),
               Board(),
            ],
          ),
        ),
      ),
    );
  }
}
