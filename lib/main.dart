import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Login"),
            ),
            body: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: 'Email Address',
                              prefixIcon: Icon(Icons.email_outlined),
                              border: OutlineInputBorder()),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.password_outlined),
                              suffixIcon:
                                  Icon(Icons.remove_red_eye_outlined),
                              border: OutlineInputBorder()),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: double.infinity,
                  child: MaterialButton(
                      color: Colors.blue,
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      onPressed: () => print(
                          '${emailController.text} ${passwordController.text}'),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
              ),
            )
        )
    );
  }
}
