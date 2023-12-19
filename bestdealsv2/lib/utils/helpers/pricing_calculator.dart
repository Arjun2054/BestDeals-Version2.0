class TPricingCalculator {
  ///--- Calculate Price based on tax

  static double calculateTotalPrice(double coursePrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = coursePrice * taxRate;

    double totalPrice = coursePrice + taxAmount;
    return totalPrice;
  }

  /// -- Calculate tax
  static String caluclateTax(double coursePrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = coursePrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // lookup the tax rate for the given location from a tax rate database or API
    // Return the appropriate tax rate.
    return 0.10; // Example tax rate of 10%
  }
}
