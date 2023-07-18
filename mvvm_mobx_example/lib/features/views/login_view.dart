import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view-models/calc_view_model.dart';
import 'home_view.dart';

// ignore: must_be_immutable
class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _viewModel = CalcViewModel();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String? _vaidateEmail(value) {
    if (value!.isEmpty) {
      return "Email giriniz";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return "Lütfen geçerli email giriniz";
    }
    return null;
  }

  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    void _submitForm() async {
      SharedPreferences sp = await SharedPreferences.getInstance();
      sp.setString("email", emailController.text);
      if (_formKey.currentState!.validate()) {
        _viewModel.nextPage(context, HomeView());
      }
    }

    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Kullanıcı Adı",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: _vaidateEmail),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)),
                        labelText: "Şifre",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Şİfre giriniz";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: _submitForm,
                        child: Text("Giriş yap"),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
