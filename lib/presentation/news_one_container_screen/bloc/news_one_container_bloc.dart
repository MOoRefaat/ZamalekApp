import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mohamed_s_application1/presentation/news_one_container_screen/models/news_one_container_model.dart';
part 'news_one_container_event.dart';
part 'news_one_container_state.dart';

/// A bloc that manages the state of a NewsOneContainer according to the event that is dispatched to it.
class NewsOneContainerBloc
    extends Bloc<NewsOneContainerEvent, NewsOneContainerState> {
  NewsOneContainerBloc(NewsOneContainerState initialState)
      : super(initialState) {
    on<NewsOneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewsOneContainerInitialEvent event,
    Emitter<NewsOneContainerState> emit,
  ) async {}
}
