import 'package:bestdealsv2/common/widgets/appbar/app_bar.dart';
import 'package:bestdealsv2/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:bestdealsv2/common/widgets/sucess_screen/success_screen.dart';
import 'package:bestdealsv2/features/course/screens/checkout/widgets/billing_amount_section.dart';
import 'package:bestdealsv2/features/course/screens/checkout/widgets/billing_payment_section.dart';
import 'package:bestdealsv2/navigation_menu.dart';
import 'package:bestdealsv2/utils/constants/colors.dart';
import 'package:bestdealsv2/utils/constants/sizes.dart';
import 'package:bestdealsv2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/cart/cart_items.dart';
import '../../../../common/widgets/cart/coupon_code.dart';
import '../../../../utils/constants/image_strings.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfullPayment,
              title: 'Payment Sucess',
              subTitle: 'Your Course is inside course screen section',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout Rs 1250'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///-- Items in Cart
              ///
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(
                height: TSizes.spaceBtwnItems,
              ),

              ///-- Coupon Text
              TCouponCode(dark: dark),

              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              //---Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: dark ? TColors.blackColor : TColors.whiteColor,
                child: const Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwnItems,
                    ),

                    /// Divider
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwnItems / 2,
                    ),

                    //payment methods
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwnItems,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
