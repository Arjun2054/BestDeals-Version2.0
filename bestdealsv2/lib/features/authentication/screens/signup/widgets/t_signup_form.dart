import 'package:bestdealsv2/features/authentication/controllers/signup/sign_up_controller.dart';
import 'package:bestdealsv2/features/authentication/screens/signup/widgets/term_condtion_checkbox.dart';
import 'package:bestdealsv2/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          /// First Name and last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  validator: (value) =>
                      TValidator.validateEmptyText(' First name', value),
                  controller: controller.firstName,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText(' Last name', value),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// UserName
          TextFormField(
            expands: false,
            controller: controller.userName,
            validator: (value) =>
                TValidator.validateEmptyText(' Username', value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: TTexts.username,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// email
          TextFormField(
            expands: false,
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// phone number
          TextFormField(
            expands: false,
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo,
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          // Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              validator: (value) => TValidator.validatePassword(value),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.password,
              ),
            ),
          ),

          /// Term and Condition Checkbox
          const SizedBox(
            height: TSizes.spaceBtwnSections,
          ),
          const TTermAndConditionCheckbox(),

          /// SIgnup buttom

          const SizedBox(
            height: TSizes.spaceBtwnSections,
          ),

          // Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(TTexts.signupTitle),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwnItems,
          ),
        ],
      ),
    );
  }
}
