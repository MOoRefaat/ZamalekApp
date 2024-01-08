// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'newsarticlelist_item_model.dart';

/// This class defines the variables used in the [news_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NewsOneModel extends Equatable {
  NewsOneModel({
    this.userprofileItemList = const [],
    this.newsarticlelistItemList = const [],
  }) {}

  List<UserprofileItemModel> userprofileItemList;

  List<NewsarticlelistItemModel> newsarticlelistItemList;

  NewsOneModel copyWith({
    List<UserprofileItemModel>? userprofileItemList,
    List<NewsarticlelistItemModel>? newsarticlelistItemList,
  }) {
    return NewsOneModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      newsarticlelistItemList:
          newsarticlelistItemList ?? this.newsarticlelistItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList, newsarticlelistItemList];
}
