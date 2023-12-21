import 'package:bestdealsv2/common/styles/spacing_styles.dart';
import 'package:bestdealsv2/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/form_divider.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/t_login_form.dart';
import 'widgets/t_login_header.dart';
import 'widgets/t_social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Subtitle

              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              /// Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
