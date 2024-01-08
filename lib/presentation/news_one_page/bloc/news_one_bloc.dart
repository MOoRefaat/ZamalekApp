import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import '../models/newsarticlelist_item_model.dart';
import 'package:mohamed_s_application1/presentation/news_one_page/models/news_one_model.dart';
part 'news_one_event.dart';
part 'news_one_state.dart';

/// A bloc that manages the state of a NewsOne according to the event that is dispatched to it.
class NewsOneBloc extends Bloc<NewsOneEvent, NewsOneState> {
  NewsOneBloc(NewsOneState initialState) : super(initialState) {
    on<NewsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewsOneInitialEvent event,
    Emitter<NewsOneState> emit,
  ) async {
    emit(state.copyWith(
        newsOneModelObj: state.newsOneModelObj?.copyWith(
            userprofileItemList: fillUserprofileItemList(),
            newsarticlelistItemList: fillNewsarticlelistItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          image: ImageConstant.imgRectangle18511,
          title: "موعد مباراة الزمالك أمام بيراميدز في الدوري والقناة الناقلة",
          date: "20 سبتمبر 2023"),
      UserprofileItemModel(
          image: ImageConstant.imgRectangle18511132x278,
          title:
              "نكشف سبب غياب 7 لاعبين عن قائمة الزمالك أمام بيراميدز.. أبرزهم زيزو وفتوح!",
          date: "20 سبتمبر 2023")
    ];
  }

  List<NewsarticlelistItemModel> fillNewsarticlelistItemList() {
    return [
      NewsarticlelistItemModel(
          title: "نكشف سبب غياب 7 لاعبين عن قائمة الزمالك أمام بيراميدز",
          date: "20 سبتمبر 2023",
          image: ImageConstant.imgRectangle1851180x100),
      NewsarticlelistItemModel(
          title: "موعد مباراة الزمالك أمام بيراميدز في الدوري والقناة الناقلة",
          date: "20 سبتمبر 2023",
          image: ImageConstant.imgRectangle185111),
      NewsarticlelistItemModel(
          title:
              "اتحاد الكرة يعلن طاقم حكام مباراة الزمالك وبيراميدز في الدوري.. اختيار",
          date: "20 سبتمبر 2023",
          image: ImageConstant.imgRectangle18511132x278)
    ];
  }
}
