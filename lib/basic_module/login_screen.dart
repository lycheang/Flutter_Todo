import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final  _img =
      "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody());
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              const SizedBox(height: 10),
              _buildEmailTextField(),
              const SizedBox(height: 10),
              _buildPasswordTextField(),
              const SizedBox(height: 10),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return CircleAvatar(
      radius: 70,
      backgroundImage: NetworkImage(_img),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email),
        iconColor: Colors.grey.shade800,
        hintText: "Enter email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      textInputAction: TextInputAction.next,
    );
  }

  int _counter = 0; // This should be in your State class

Widget _buildSampleBody() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _counter--;
            });
            debugPrint("Counter: $_counter");
          },
          child: Text("Decrease"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
            debugPrint("Counter: $_counter");
          },
          child: Text("Increase"),
        ),
        Text("Counter: $_counter"),
      ],
    ),
  );
}
bool _hidePassword = true;

  Widget _buildPasswordTextField() {
  return TextField(
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.key),
      prefixIconColor: Colors.grey.shade800,
      hintText: "Enter password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _hidePassword = !_hidePassword;
          });
        },
        icon: Icon(
          _hidePassword ? Icons.visibility : Icons.visibility_off,
        ),
      ),
    ),
    obscureText: _hidePassword,
    textInputAction: TextInputAction.send,
  );
}


  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        onPressed: () {},
        child: const Text("Login"),
      ),
    );
  }
}
