// ignore_for_file: must_be_immutable

part of 'score_bloc.dart';

/// Represents the state of Score in the application.
class ScoreState extends Equatable {
  ScoreState({
    this.rectangle = false,
    this.scoreModelObj,
  });

  ScoreModel? scoreModelObj;

  bool rectangle;

  @override
  List<Object?> get props => [
        rectangle,
        scoreModelObj,
      ];
  ScoreState copyWith({
    bool? rectangle,
    ScoreModel? scoreModelObj,
  }) {
    return ScoreState(
      rectangle: rectangle ?? this.rectangle,
      scoreModelObj: scoreModelObj ?? this.scoreModelObj,
    );
  }
}
