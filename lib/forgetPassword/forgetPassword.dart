import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Forget Password",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        leadingWidth: 100,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 6,
            child: Image(
              image: AssetImage("assets/img/forget.png"),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Enter your phone number",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "We need to verify you. We will send you a one-time authorization code.",
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(
                    height: 20,
                  ),
                  IntlPhoneField(
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
                      // ignore: avoid_print
                      print(phone.completeNumber);
                    },
                  ),
                  const SizedBox(
                    height: 30,
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
                          "Next",
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
            ),
          ),
        ],
      ),
    );
  }
}
