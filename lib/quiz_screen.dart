// lib/screens/quiz_screen.dart

import 'package:flutter/material.dart';
import 'quiz_result_screen.dart';
import '/module.dart';

class QuizScreen extends StatefulWidget {
  final List<Question> questions;

  QuizScreen({required this.questions});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  List<int?> _selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    _selectedAnswers = List<int?>.filled(widget.questions.length, null);
  }

  void _submitAnswer() {
    if (_selectedAnswers[_currentQuestionIndex] != null) {
      if (_currentQuestionIndex == widget.questions.length - 1) {
        int score = _calculateScore();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => QuizResultScreen(
              score: score,
              totalQuestions: widget.questions.length,
            ),
          ),
        );
      } else {
        setState(() {
          _currentQuestionIndex++;
        });
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Пожалуйста, выберите ответ')),
      );
    }
  }

  int _calculateScore() {
    int score = 0;
    for (int i = 0; i < widget.questions.length; i++) {
      if (_selectedAnswers[i] == widget.questions[i].correctAnswerIndex) {
        score++;
      }
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Вопрос ${_currentQuestionIndex + 1}/${widget.questions.length}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.questionText,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ...List.generate(question.answers.length, (index) {
              return RadioListTile<int>(
                title: Text(question.answers[index]),
                value: index,
                groupValue: _selectedAnswers[_currentQuestionIndex],
                onChanged: (value) {
                  setState(() {
                    _selectedAnswers[_currentQuestionIndex] = value;
                  });
                },
              );
            }),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitAnswer,
              child: Text('Ответить'),
            ),
          ],
        ),
      ),
    );
  }
}
