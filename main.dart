import 'quiz_game.dart';
import 'quiz_question.dart';

void main() {
  QuizQuestion q1 = QuizQuestion(
    question: "Was ergibt 1 + 1",
    answers: ["3", "200", "2", "0"],
    correctAnswerIndex: 2,
  );

  QuizGame quizgame1 = QuizGame(
    chapterNumber: "3",
    chapterName: "Grundlagen der Programmierung",
    quizQuestions: [
      q1,
    ],
  );
}
