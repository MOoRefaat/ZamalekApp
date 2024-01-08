import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:mohamed_s_application1/presentation/splash_three_screen/models/splash_three_model.dart';
part 'splash_three_event.dart';
part 'splash_three_state.dart';

/// A bloc that manages the state of a SplashThree according to the event that is dispatched to it.
class SplashThreeBloc extends Bloc<SplashThreeEvent, SplashThreeState> {
  SplashThreeBloc(SplashThreeState initialState) : super(initialState) {
    on<SplashThreeInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<SplashThreeState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _onInitialize(
    SplashThreeInitialEvent event,
    Emitter<SplashThreeState> emit,
  ) async {
    emit(state.copyWith(
        phoneNumberController: TextEditingController(),
        eyeslashiconController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.newsOneContainerScreen,
      );
    });
  }
}
