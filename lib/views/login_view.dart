import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            JudulHalamanLogin(),
            Stack(
              children: [
                CardFormLogin(),
                LogoAplikasi(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardFormLogin extends StatelessWidget {
  const CardFormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.fromLTRB(30, 130, 30, 20),
        color: Color.fromARGB(255, 233, 204, 204),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            InputTextAja(),
            SizedBox(
              height: 20,
            ),
            InputTextAja(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Login'),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Colors.red),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class LogoAplikasi extends StatelessWidget {
  const LogoAplikasi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Image.asset(
          'assets/logo.png',
          width: 130,
        ),
      ),
    );
  }
}

class InputTextAja extends StatelessWidget {
  const InputTextAja({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            isDense: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder()),
      ),
    );
  }
}

class JudulHalamanLogin extends StatelessWidget {
  const JudulHalamanLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Center(
        child: Text(
          'Aplikasi\nPendataan Warga',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
