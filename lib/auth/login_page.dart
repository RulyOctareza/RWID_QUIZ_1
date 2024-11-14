import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    FlutterLogo(
                      size: 130,
                    ),
                  ],
                ),
                const Text(
                  'Let\'s Sign You In',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                TextField(
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Icon(
                            isVisible
                                ? Icons.remove_red_eye_sharp
                                : Icons.no_encryption_gmailerrorred,
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        hintText: 'Password')),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 20),
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text('Or'),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 20),
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.g_mobiledata_sharp),
                        Text(
                          'Sign In with Google',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
