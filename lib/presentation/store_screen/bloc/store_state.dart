// ignore_for_file: must_be_immutable

part of 'store_bloc.dart';

/// Represents the state of Store in the application.
class StoreState extends Equatable {
  StoreState({
    this.searchController,
    this.storeModelObj,
  });

  TextEditingController? searchController;

  StoreModel? storeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        storeModelObj,
      ];
  StoreState copyWith({
    TextEditingController? searchController,
    StoreModel? storeModelObj,
  }) {
    return StoreState(
      searchController: searchController ?? this.searchController,
      storeModelObj: storeModelObj ?? this.storeModelObj,
    );
  }
}
