import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget _emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'you@email.com',
          labelText: 'Email Address',
          border: OutlineInputBorder()),
    );
  }

  Widget _passwordField() {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          border: OutlineInputBorder()),
    );
  }

  Widget _submitButton() {
    return Container(
      width: double.infinity,
      height: 56,
      child: RaisedButton(
        color: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.red),
        ),
        onPressed: () {},
        child: Icon(
          Icons.login,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text('data'),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 60, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _emailField(),
              const SizedBox(height: 30),
              _passwordField(),
              const SizedBox(height: 30),
              _submitButton()
            ],
          ),
        ),
      ),
    );
  }
}
