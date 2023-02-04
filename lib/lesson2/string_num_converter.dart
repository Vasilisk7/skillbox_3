class StringNumConverter {
  static const Map<String, int> _numbersWithWords = {
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
    'zero': 0,
  };

  /// Реализуйте метод, который принимает строку слов, разделённых пробелами.
  /// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  List<num> toNum(final String? value) {
    String? currentValue = value;
    final List<num> result = List.empty(growable: true);

    if (currentValue == null || currentValue.trim().isEmpty) {
      return result;
    }
    currentValue = currentValue.trim();
    currentValue.split(" ").forEach((element) {
      num? preNum = double.tryParse(element);
      if (preNum != null) {
        result.add(preNum);
      }
    });

    return result;
  }

  /// Есть коллекция слов. Реализуйте метод, возвращающий Map.
  /// Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
  Map<String, int> wordCount(final List<String> value) {
    final Map<String, int> result = {};

    for (var element in value) {
      if (result.containsKey(element)) {
        result.update(element, (valueUpdate) {
          return ++valueUpdate;
        });
      } else {
        result[element] = 1;
      }
    }

    return result;
  }

  /// Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
  /// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
  /// Однако цифры встречаются в виде английских слов от zero до nine.
  /// Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
  /// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
  Set<int> wordToNum(final List<String> value) {
    final Set<int> result = {};

    for (var item in value) {
      int? perNumber = _numbersWithWords[item.trim()];
      if (perNumber != null) {
        result.add(perNumber);
      }
    }

    return result;
  }
}
