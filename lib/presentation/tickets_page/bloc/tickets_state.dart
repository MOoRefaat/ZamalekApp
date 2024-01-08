// ignore_for_file: must_be_immutable

part of 'tickets_bloc.dart';

/// Represents the state of Tickets in the application.
class TicketsState extends Equatable {
  TicketsState({this.ticketsModelObj});

  TicketsModel? ticketsModelObj;

  @override
  List<Object?> get props => [
        ticketsModelObj,
      ];
  TicketsState copyWith({TicketsModel? ticketsModelObj}) {
    return TicketsState(
      ticketsModelObj: ticketsModelObj ?? this.ticketsModelObj,
    );
  }
}
