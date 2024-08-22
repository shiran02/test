import 'package:intl/intl.dart';

extension StringX on String {
  bool toBool() {
    return this == 'true';
  }

  String toAmount() {
    return replaceAll(r'/\B(?=(\d{3})+(?!\d))/g', ",");
  }

  String toPrice() {
    if (isNotEmpty) {
      final NumberFormat numberFormat = NumberFormat("#,##0", "en_US");

      return numberFormat.format(double.parse(this));
    } else {
      return this;
    }
  }

  String toPhoneHint() {
    if (isEmpty) {
      return "XXXXXXXXX";
    } else {
      return replaceAll(RegExp('[^]'), 'X');
    }
  }

  List<String> splitByLength(int length) =>
      [substring(0, length), substring(length)];
}
