// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../forgetPassword/forgetPassword.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        color: Colors.transparent,
        child: Column(
          children: [
            const Expanded(
                child: Image(
              image: AssetImage("assets/img/login.png"),
            )),
            Expanded(
                child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Welcome"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                      "Welcome to Organico Mobile Apps. Please fill in the field below to sign in."),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width * 0.061),
                        ),
                      ),
                      initialCountryCode: 'UZ',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)))
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPassword()));
                          },
                          child: const Text("Forget password"))
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.061,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green,
                      ),
                      child: const Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
