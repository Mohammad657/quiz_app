import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png",
              width: 300, color: Colors.white.withOpacity(0.5)),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "learn Flutter",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: switchScreen,
              icon: const Icon(Icons.arrow_right_alt_outlined),
              label: const Text(
                "Start Quiz",
              ))
        ],
      ),
    );
  }
}
