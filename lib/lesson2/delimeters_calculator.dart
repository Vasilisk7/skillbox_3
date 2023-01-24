import 'dart:math';

/// Реализуйте методы вычисления НОД и НОК целых чисел.
/// Реализуйте метод, который разбивает число на простые множители и возвращает их.
class DelimetersCalculator {
  /// Наибольший общий делитель
  int nod(final int numberOne, final int numberTwo) {
    final int numberOneAbs = numberOne.abs();
    final int numberTwoAbs = numberTwo.abs();

    if (numberOneAbs == 0 && numberTwoAbs == 0) {
      return 0;
    }

    if (numberOneAbs == 0) {
      return numberTwoAbs;
    }

    if (numberTwoAbs == 0) {
      return numberOneAbs;
    }

    final int largest = max(numberOneAbs, numberTwoAbs);
    int nod = largest;
    while (nod > 0) {
      int remainderOfDivisionX = numberOneAbs % nod;
      int remainderOfDivisionY = numberTwoAbs % nod;
      if (remainderOfDivisionX == 0 && remainderOfDivisionY == 0) {
        return nod;
      }
      nod--;
    }

    return 1; // каждое число делится на 1 без остатка
  }

  /// Наименьшее общее кратное
  int nok(final int numberOne, final int numberTwo) {
    if (numberOne == 0  || numberTwo == 0) {
      return 0;
    }

    return (numberOne.abs() / nod(numberOne, numberTwo) * numberTwo.abs()).toInt();
  }
}
