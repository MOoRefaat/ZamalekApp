// ignore_for_file: must_be_immutable

part of 'matches_bloc.dart';

/// Represents the state of Matches in the application.
class MatchesState extends Equatable {
  MatchesState({this.matchesModelObj});

  MatchesModel? matchesModelObj;

  @override
  List<Object?> get props => [
        matchesModelObj,
      ];
  MatchesState copyWith({MatchesModel? matchesModelObj}) {
    return MatchesState(
      matchesModelObj: matchesModelObj ?? this.matchesModelObj,
    );
  }
}
