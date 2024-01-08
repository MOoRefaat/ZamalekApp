// ignore_for_file: must_be_immutable

part of 'news_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewsOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewsOneContainerEvent extends Equatable {}

/// Event that is dispatched when the NewsOneContainer widget is first created.
class NewsOneContainerInitialEvent extends NewsOneContainerEvent {
  @override
  List<Object?> get props => [];
}
