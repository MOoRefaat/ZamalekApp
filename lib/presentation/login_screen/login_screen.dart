import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohamed_s_application1/widgets/custom_phone_number.dart';
import 'package:mohamed_s_application1/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('20');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController eyeslashiconController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildTelevisionStack(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: Text(
                  "مرحبا بعودتك!",
                  style: TextStyle(
                    color: theme.colorScheme.primaryContainer,
                    fontSize: 32.fSize,
                    fontFamily: 'DIN Next LT Arabic',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: Text(
                  "الرجاء ادخال رقم الهاتف ادناه لبدء استخدام التطبيق",
                  style: TextStyle(
                    color: appTheme.blueGray300,
                    fontSize: 16.fSize,
                    fontFamily: 'DIN Next LT Arabic',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              _buildPhoneNumberInputColumn(context),
              SizedBox(height: 19.v),
              _buildEyeslashiconColumn(context),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: Text(
                  "نسيت كلمة المرور؟",
                  style: TextStyle(
                    color: theme.colorScheme.primaryContainer,
                    fontSize: 16.fSize,
                    fontFamily: 'DIN Next LT Arabic',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                text: "تسجيل الدخول",
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                alignment: Alignment.center,
              ),
              Spacer(),
              SizedBox(height: 46.v),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "ليس لديك حساب؟ ",
                        style: theme.textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "انضم الينا",
                        style: CustomTextStyles.bodyLargePrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTelevisionStack(BuildContext context) {
    return Container(
      height: 140.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 4.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup141,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Opacity(
            opacity: 0.25,
            child: CustomImageView(
              imagePath: ImageConstant.img,
              height: 55.v,
              width: 271.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevision,
            height: 100.v,
            width: 72.h,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberInputColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "رقم الهاتف",
              style: TextStyle(
                color: appTheme.blueGray300,
                fontSize: 16.fSize,
                fontFamily: 'DIN Next LT Arabic',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          CustomPhoneNumber(
            country: selectedCountry,
            controller: phoneNumberController,
            onTap: (Country value) {
              selectedCountry = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEyeslashiconColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "كلمة المرور",
              style: TextStyle(
                color: appTheme.blueGray300,
                fontSize: 16.fSize,
                fontFamily: 'DIN Next LT Arabic',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          CustomTextFormField(
            controller: eyeslashiconController,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 20.v,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgEyeslashIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 64.v,
            ),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
