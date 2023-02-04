import 'dart:math' as math;

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.single() {
    return Point(1, 1, 1);
  }

  factory Point.beast() {
    return Point(6, 6, 6);
  }

  double distanceTo(final Point another) {
    final num xLen = math.pow((another.x - x), 2);
    final num yLen = math.pow((another.y - y), 2);
    final num zLen = math.pow((another.z - z), 2);
    return math.sqrt(xLen + yLen + zLen);
  }
}
