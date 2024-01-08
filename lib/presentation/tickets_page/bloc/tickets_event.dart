// ignore_for_file: must_be_immutable

part of 'tickets_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tickets widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TicketsEvent extends Equatable {}

/// Event that is dispatched when the Tickets widget is first created.
class TicketsInitialEvent extends TicketsEvent {
  @override
  List<Object?> get props => [];
}
