// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.phoneNumberController,
    this.eyeslashiconController,
    this.selectedCountry,
    this.loginModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? eyeslashiconController;

  LoginModel? loginModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        eyeslashiconController,
        selectedCountry,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? eyeslashiconController,
    Country? selectedCountry,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      eyeslashiconController:
          eyeslashiconController ?? this.eyeslashiconController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
