import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../commons/providers/view_password_change_nortifier.dart';
import '../providers/agree_to_tcs_change_nortifier.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ViewPasswordChangeNortifier>().isPasswordVisible = false;
    context.read<AgreeToTermsAndConditionsChangeNortifier>().isAgreedToTCs =
        false;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  padding: const EdgeInsets.all(80),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      //fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.rocket_launch,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "appwrite",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Build like a team of hundreds",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 65,
                          ),
                          children: [
                            TextSpan(
                              text: "_",
                              style: TextStyle(
                                  color: Colors.pink[500],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const TextField(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.0,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: "Your name",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const TextField(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.0,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: "Your email",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Consumer<ViewPasswordChangeNortifier>(
                    builder: (context, nortifier, child) {
                      return TextField(
                        obscureText: !nortifier.isPasswordVisible,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                            suffix: InkWell(
                              onTap: () {
                                context
                                    .read<ViewPasswordChangeNortifier>()
                                    .togglePasswordVisiblity();
                              },
                              child: Icon(
                                size: 16,
                                nortifier.isPasswordVisible
                                    ? Icons.visibility
                                    : Icons
                                        .visibility_off, //visibility// visibility_off
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 0.0,
                              ),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.0,
                              ),
                            ),
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Your password"),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 4.0,
                          left: 0,
                        ),
                        child:
                            Consumer<AgreeToTermsAndConditionsChangeNortifier>(
                          builder: (context, nortifier, child) {
                            return Checkbox(
                              value: nortifier.isAgreedToTCs,
                              activeColor: Colors.blue[500],
                              onChanged: (value) {
                                context
                                    .read<
                                        AgreeToTermsAndConditionsChangeNortifier>()
                                    .setAgreementToTCs(
                                      selection: value ??= false,
                                    );
                              },
                              side: const BorderSide(
                                color: Colors.grey,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text:
                                "By registering, you agree that you have read, understand, and acknowledge our ",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: "Privacy Policy",
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Privacy Policy clicked!');
                                  },
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              const TextSpan(
                                text: " and accept our ",
                              ),
                              TextSpan(
                                text: "General Terms of Use.",
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('General Terms of Use clicked!');
                                  },
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width,
                    child: ElevatedButton(
                      //icon: Icon(Icons.abc),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/icons/github-logo.png",
                              fit: BoxFit.fill, scale: .9),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("Sign up with Github"),
                        ],
                      ),
                      // label: Text("Sign up with Github"),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Already got an account? ",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign in",
                            mouseCursor: MaterialStateMouseCursor.clickable,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Sign in clicked!');
                              },
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
