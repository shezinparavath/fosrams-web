import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fosrams_web/constants/colors.dart';
import 'package:fosrams_web/constants/style.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.validator,
      this.obscure = false,
      this.suffixIcon,
      this.onSuffixTap,
      this.inputType});
  final String hintText;
  final bool obscure;
  final String labelText;
  final String? Function(String?)? validator;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixTap;
  final List<TextInputFormatter>? inputType;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            width: Responsive.isSmallerPhone(context)
                ? 220
                : Responsive.isMobile(context)
                    ? 332
                    : Responsive.isTablet(context)
                        ? 380
                        : 418,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(labelText, style: AppStyles.averageText(context: context)),
              TextFormField(
                  inputFormatters: inputType,
                  obscureText: obscure,
                  validator: validator,
                  style: AppStyles.mediumText(context: context),
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: onSuffixTap,
                          child: Icon(suffixIcon, color: AppColors.textColor)),
                      hintStyle: AppStyles.mediumText(
                          context: context, color: const Color(0xffBEBEBE)),
                      hintText: hintText,
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: AppColors.redColor)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: AppColors.redColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: AppColors.greyColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: AppColors.greyColor))))
            ])));
  }
}
