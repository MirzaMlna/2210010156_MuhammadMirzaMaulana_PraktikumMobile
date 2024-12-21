import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.startQuiz, required this.profile, super.key});

  final void Function() startQuiz;
  final void Function() profile;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 100,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Quiz App',
            style: TextStyle(color: Colors.white, fontSize: 34),
          ),
          const Text(
            'Praktikum Mobile 5O',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.orange),
              onPressed: startQuiz,
              child: const Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.arrow_right_alt),
                SizedBox(
                  width: 8,
                ),
                Text('Start Quiz')
              ])),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.orange),
              onPressed: profile,
              child: const Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.people_alt),
                SizedBox(
                  width: 8,
                ),
                Text('Profile')
              ])),
        ],
      ),
    );
  }
}
