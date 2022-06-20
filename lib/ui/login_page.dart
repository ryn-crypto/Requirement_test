import 'package:abon/bloc/login_block.dart';
import 'package:abon/helpers/user_info.dart';
import 'package:abon/ui/dasboard.dart';
import 'package:flutter/material.dart';
import 'package:abon/widget/warning_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  final _emailTextboxController = TextEditingController();
  final _passwordTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _emailTextField(),
                  _passwordTextField(),
                  _buttonLogin(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )),
        ),
      ),
    );
  }

  // Membuat Textbox email
  Widget _emailTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      controller: _emailTextboxController,
      validator: (value) {
        // validasi harus diisi
        if (value!.isEmpty) {
          return 'Email harus diisi';
        } else {
          // validasi email
          Pattern pattern =
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          RegExp regExp = RegExp(pattern.toString());
          if (!regExp.hasMatch(value)) {
            return 'Email tidak valid';
          }
          return null;
        }
      },
    );
  }

  // Membuat Textbox password
  Widget _passwordTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: _passwordTextboxController,
      validator: (value) {
        // jika kosong
        if (value!.isEmpty) {
          return 'Password harus diisi';
        } else {
          // jika karakter yang dimasukan kurang dari 5
          if (value.length < 5) {
            return 'Password kurang dari 5 karakter';
          }
          return null;
        }
      },
    );
  }

  // Membuat Tombol Login
  Widget _buttonLogin() {
    return ElevatedButton(
        child: const Text('Login'),
        onPressed: () {
          var validate = _formKey.currentState!.validate();
          if (validate) {
            if (!_isLoading) _submit();
          }
        });
  }

  // _submit
  void _submit() {
    _formKey.currentState!.save();
    setState(() {
      _isLoading = true;
    });

    LoginBloc.login(
            email: _emailTextboxController.text,
            password: _passwordTextboxController.text)
        .then((value) async {
      await UserInfo().setUserID(int.parse(value.userId.toString()));
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Dasboard(value.userNama, value.userImg)));
    }, onError: (error) {
      print(error);
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => const WarningDialog(
                description: "Login gagal, Silahkan coba lagi",
              ));
    });
    setState(() {
      _isLoading = false;
    });
  }
}
