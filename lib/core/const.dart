import 'package:flutter/material.dart';

class SingUpp {
  static final TextEditingController name = TextEditingController();
  static final TextEditingController email = TextEditingController();
  static final TextEditingController password = TextEditingController();
  static final TextEditingController password1 = TextEditingController();
  static var formKey = GlobalKey<FormState>();
}

class LogIn {
  static final TextEditingController login = TextEditingController();
  static final TextEditingController pasword = TextEditingController();
  static var formKey1 = GlobalKey<FormState>();
}

class Phone {
  static final TextEditingController sms = TextEditingController();
  static final TextEditingController phone = TextEditingController();
  static var formKey2 = GlobalKey<FormState>();
}
