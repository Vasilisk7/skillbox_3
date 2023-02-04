/// Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
class Decimal {
  /// Двоичная в десятичную
  int binaryToDecimal(String value) {
    String currentValue = value;
    if (currentValue.isEmpty) {
      return 0;
    }
    // Строка не двоичное число
    if (double.tryParse(currentValue) == null) {
      return 0;
    }

    int result = 0;
    int mult = 1;
    for (int i = currentValue.length - 1; i >= 0; i--) {
      if (currentValue[i] == '1') {
        result += mult;
      }
      mult *= 2;
    }

    return result;
  }

  /// Десятичная в дввоичную
  String decimalToBinary(final int value) {
    int currentValue = value;
    if (currentValue <= 0) {
      return "0";
    }

    final StringBuffer result = StringBuffer();
    while (currentValue != 0) {
      result.write(currentValue & 1);
      currentValue >>>= 1;
    }

    return result.toString().split('').reversed.join();
  }
}
