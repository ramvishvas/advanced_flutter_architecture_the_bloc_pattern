import 'dart:async';

import 'package:flutter_bloc/src/bloc/validators.dart';

// class Bloc extends Validators {
class Bloc extends Object with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  // Add data to stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // // Retrive data from stream
  // Stream<String> get email => _emailController.stream;
  // Stream<String> get password => _passwordController.stream;

  // Retrive data from stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
