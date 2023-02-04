class StringNumConverter {
  /// Реализуйте метод, который принимает строку слов, разделённых пробелами.
  /// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  List<num> toNum(String? value) {
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
  Map<String, int> wordCount(List<String> value) {
    Map<String, int> result = {};

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
}
