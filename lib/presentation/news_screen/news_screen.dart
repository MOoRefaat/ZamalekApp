import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  Container(
                    width: 337.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "نكشف سبب غياب 7 لاعبين عن قائمة الزمالك أمام بيراميدز.. أبرزهم زيزو وفتوح!",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: theme.colorScheme.primaryContainer,
                        fontSize: 24.fSize,
                        fontFamily: 'DIN Next LT Arabic',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "20 سبتمبر 2023",
                      style: TextStyle(
                        color: appTheme.blueGray300,
                        fontSize: 14.fSize,
                        fontFamily: 'DIN Next LT Arabic',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildWidget(context),
                  SizedBox(height: 7.v),
                  SizedBox(
                    width: 345.h,
                    child: Text(
                      "شهدت قائمة الزمالك لمواجهة الغد أمام بيراميدز في الجولة الأولى من الدوري العديد من الغيابات والمفاجأة\r\n\r\nمواجهة الغد أمام بيراميدز في الجولة الأولى من مسابقة الدوري العام الممتاز لكرة القدم غدا الخميس على ملعب استاد الدفاع الجوي\r\n\r\nالقائمة شهدت غياب كل من، \r\n غياب كل من أحمد سيد زيزو وحاتم سكر للإيقاف وأحمد فتوح للإصابة الى جانب غياب لـ التونسي سيف الدين الجزيري\r\n\r\nحيث تواجد في خط الهجوم خلال القائمة، الثنائي ناصر منسي وعلى ياسر، وبالتالي قد تكون فرصة لـ منسي لاثبات نفسه، أو للمهاجم الشاب على ياسر للظهور بقوة\r\n\r\nكما استمر غياب الحارس محمد عواد حارس المرمى في ظل الحديث عن استمرار إصابته، ولكن عقب تصريحاته الأخيرة ضد المدرب أوسوريو التي تراجع عنها فيما بعد\r\n\r\nكما تواجد عدد من الناشئين مثل، المهاجم على ياسر، وأحمد عبد الرحيم ايشو والحارس عبد الرحمن نفاذ\r\n\r\nاقرا أيضا .. \r\n\r\n\"عاجل\" قائمة الزمالك لمباراة بيراميدز\r\n\r\nشاهد الفيديوهات\r\nليه فريق البطولات مش بيستمر في الزمالك؟!.. رد غير متوقع من إسماعيل يوسف\r\nمفاجأة.. الزمالك يتواصل مع مدير فني جديد لخلافة أوسوريو.. تعرف عليه\r\nشاهد بلدية المحلة وبداية قوية للدوري بالفوز على المقاولون بثنائية نظيفة\r\nميدو: جمهور الزمالك بيتحسر على فرقة 2020!!.. إسماعيل يوسف يكشف الكواليس\r\nطارق جبريل : فاروق جعفر كان يرغب فى التواجد ضمن قائمة حسين لبيب .. وهشام نصر أفضل إداريا\r\nمسئول بالزمالك لسيف الجزيري: انت جزائري ولا مغربي.. واللاعب يرد بطريقة درامية!!\r\nفرح علي تعلق على خسارة الإسماعيلي من نادي زد\r\nصادق: الزمالك بيدفع ثمن عدم الاستقرار... والمستحقات المالية سبب استبعاد سيف الجزيري من أمام بيراميدز\r\nطارق جبريل يهاجم عمر هريدي بسبب تصريحاته عن مرشحي انتخابات الزمالك\r\nطارق جبريل : المنافسة بين هانى العتال وهشام نصر قوية\r\nالطريقة الأفضل للزمالك في مواجهة بيراميدز. إسماعيل يوسف يرد برسالة لـ \"أوسوريو\"\r\nعصام مرعي: اوسوريو خيالي ومش واقعي.\r",
                      maxLines: 15,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: theme.colorScheme.primaryContainer,
                        fontSize: 16.fSize,
                        fontFamily: 'DIN Next LT Arabic',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 77.v,
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle18511132x278,
        height: 180.v,
        width: 313.h,
        radius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }
}
