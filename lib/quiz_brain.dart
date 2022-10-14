import 'package:quizzler/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Do you know Vishnu', true),
    Question('Do you think you\'re really close with vishnu ', true),
    Question('Is vishnu a bad person', false),
    Question('Is vishnu more 6 feet tall?', true),
    Question('Does he play basketball nowdays?', true),
    // Question('Do you know vishnu likes shruti', true),
    // Question('By any chance, are you Shruti Tripathi?', true),
    // Question('So you are shruti', true),
    // Question('So you do know vishnu loves you', true),
    // Question('He wants to be with you, he is crazy about you, he wants spend his rest of life with you, do you feel same? ', true),
    // Question('I love You Shruti!!!, Please be my girlfriend?' , true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswers() {
    return _questionBank[_questionNumber].questionAnswers;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  bool isShruti()
  {
    if(_questionNumber == 5) {
      if (_questionBank[5].questionAnswers == true){
        return true;}
    }
      return false;
  }
}
