// Project imports:
import 'package:untitled/lesson2/mixin_user.dart';
import 'package:untitled/lesson2/user.dart';

class AdminUser extends User with mixinUser {
  AdminUser(super.email);

}
