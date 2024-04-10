import 'quiz_question.dart';

class QuizGame {
  String chapterNumber;
  String chapterName;
  List<QuizQuestion> quizQuestions;

  QuizGame({
    required this.chapterNumber,
    required this.chapterName,
    required this.quizQuestions,
  });

  // methoden

  int getNumberOfQuestions() {
    return quizQuestions.length;
  }
}
/* 
1 Orientierung
2 Design UI
3 Grundlagen
4 Flutter
...




#
 */