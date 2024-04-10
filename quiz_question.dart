class QuizQuestion {
  String question;
  List<String> answers;
  // [asd,  sdf,   gdf,   ghj]
  //   0     1      2      3
  int correctAnswerIndex;

  QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}
