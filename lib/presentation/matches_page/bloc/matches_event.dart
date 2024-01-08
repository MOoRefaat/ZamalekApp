// ignore_for_file: must_be_immutable

part of 'matches_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Matches widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MatchesEvent extends Equatable {}

/// Event that is dispatched when the Matches widget is first created.
class MatchesInitialEvent extends MatchesEvent {
  @override
  List<Object?> get props => [];
}
