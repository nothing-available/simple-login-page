import 'package:flutter/material.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        //because scaffold automatically set white background
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 150,
                top: 200,
              ),
              child: const Text(
                'Welcome\nBack',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  // every laptop or mobile screen is diffrent so adjust in every sized display
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 80,
                  left: 80,
                ),
                child: Column(
                  //becuase I need two text field
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.white),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                       hintStyle: const TextStyle(color: Colors.white),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const Text(
                          'Signin',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            color: Colors.white,

                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: const Text(
                              'SignUp',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            child: const Text(
                              'Forgot Paswoord',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
