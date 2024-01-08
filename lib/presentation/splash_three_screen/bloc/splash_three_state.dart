// ignore_for_file: must_be_immutable

part of 'splash_three_bloc.dart';

/// Represents the state of SplashThree in the application.
class SplashThreeState extends Equatable {
  SplashThreeState({
    this.phoneNumberController,
    this.eyeslashiconController,
    this.selectedCountry,
    this.splashThreeModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? eyeslashiconController;

  SplashThreeModel? splashThreeModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        eyeslashiconController,
        selectedCountry,
        splashThreeModelObj,
      ];
  SplashThreeState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? eyeslashiconController,
    Country? selectedCountry,
    SplashThreeModel? splashThreeModelObj,
  }) {
    return SplashThreeState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      eyeslashiconController:
          eyeslashiconController ?? this.eyeslashiconController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      splashThreeModelObj: splashThreeModelObj ?? this.splashThreeModelObj,
    );
  }
}
