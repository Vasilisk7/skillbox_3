import 'package:untitled/lesson2/user.dart';

mixin mixinUser on User {
  String getMailSystem() {
    int indexMail = email.indexOf('@');
    if (indexMail == 0) {
      return email;
    }
    return email.substring(indexMail, email.length);
  }
}
