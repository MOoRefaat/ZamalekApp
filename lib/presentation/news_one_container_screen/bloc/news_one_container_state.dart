// ignore_for_file: must_be_immutable

part of 'news_one_container_bloc.dart';

/// Represents the state of NewsOneContainer in the application.
class NewsOneContainerState extends Equatable {
  NewsOneContainerState({this.newsOneContainerModelObj});

  NewsOneContainerModel? newsOneContainerModelObj;

  @override
  List<Object?> get props => [
        newsOneContainerModelObj,
      ];
  NewsOneContainerState copyWith(
      {NewsOneContainerModel? newsOneContainerModelObj}) {
    return NewsOneContainerState(
      newsOneContainerModelObj:
          newsOneContainerModelObj ?? this.newsOneContainerModelObj,
    );
  }
}
