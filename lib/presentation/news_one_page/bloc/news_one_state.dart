// ignore_for_file: must_be_immutable

part of 'news_one_bloc.dart';

/// Represents the state of NewsOne in the application.
class NewsOneState extends Equatable {
  NewsOneState({this.newsOneModelObj});

  NewsOneModel? newsOneModelObj;

  @override
  List<Object?> get props => [
        newsOneModelObj,
      ];
  NewsOneState copyWith({NewsOneModel? newsOneModelObj}) {
    return NewsOneState(
      newsOneModelObj: newsOneModelObj ?? this.newsOneModelObj,
    );
  }
}
