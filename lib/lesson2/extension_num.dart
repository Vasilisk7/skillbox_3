/// Реализуйте метод, который вычисляет корень любой заданной степени из числа.
/// Реализуйте данный метод как extension-метод для num.
extension SuperNum on num {
  double nthDegreeRoot(final double sqrtArg) {
    if (sqrtArg == 0) {
      throw ArgumentError('Степень корня не может быть равно 0');
    }

    num number = this;
    double root = number / sqrtArg;
    double eps = 0.01;
    while( root - number / root > eps ){
      root = 0.5 * (root + number / root);
    }
    return root;
  }
}