// ignore_for_file: must_be_immutable

part of 'store_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Store widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StoreEvent extends Equatable {}

/// Event that is dispatched when the Store widget is first created.
class StoreInitialEvent extends StoreEvent {
  @override
  List<Object?> get props => [];
}
