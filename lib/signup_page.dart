import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  'Let\'s Create An Account',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
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
                  height: 16,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    hintText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 16,
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
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 20),
                      backgroundColor: Colors.blue,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text('Or'),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.g_mobiledata_sharp),
                        Text(
                          'Sign Up with Google',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 20),
                      backgroundColor: Colors.white,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already Have Account?'),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign In',
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
