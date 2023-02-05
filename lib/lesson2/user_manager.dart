// Project imports:
import 'package:untitled/lesson2/admin_user.dart';
import 'package:untitled/lesson2/user.dart';

class UserManager<T extends User> {
  final Set<T> _users = {};

  bool store(T value) {
    return _users.add(value);
  }

  bool delete(T value) {
    return _users.remove(value);
  }

  List<String> getAllMails() {
    final List<String> result = List.empty(growable: true);
    for (var element in _users) {
      if (element is AdminUser) {
        result.add(element.getMailSystem());
      } else {
        result.add(element.email);
      }
    }

    return result;
  }
}
