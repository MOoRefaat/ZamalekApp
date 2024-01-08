// ignore_for_file: must_be_immutable

part of 'news_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewsOneEvent extends Equatable {}

/// Event that is dispatched when the NewsOne widget is first created.
class NewsOneInitialEvent extends NewsOneEvent {
  @override
  List<Object?> get props => [];
}
