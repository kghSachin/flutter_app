import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 34, 34),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          Stack(
            children: [
              SvgPicture.asset(
                "assets/icons/auth/atomic_book_logo.svg",
                height: 150,
                width: 100,
                colorFilter:
                    const ColorFilter.mode(Colors.cyanAccent, BlendMode.srcIn),
              ),
              // Positioned(
              //   top: 60,
              //   left: 50,
              //   child: SvgPicture.asset(
              //     "assets/icons/auth/login_top_logo.svg",
              //     height: 100,
              //     width: 100,
              //     colorFilter: ColorFilter.mode(Colors.cyan, BlendMode.srcIn),
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 74, 70, 68),
                borderRadius: BorderRadius.circular(24)),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ).copyWith(top: 24, bottom: 6),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Enter your email and password to sign in",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white.withOpacity(0.6),
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                    alignLabelWithHint: true,
                    isDense: true,
                    fillColor: Colors.black,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(
                      Icons.mail,
                      color: Colors.cyan,
                    ),
                    label: Text(
                      "Email Address",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                    hintText: "Example123@gmail.com",
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.cyan,
                      ),
                      label: Text(
                        "Password",
                        style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      ),
                      hintText: "********",
                      suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text("show",
                              style: TextStyle(color: Colors.white)))),
                ),
                const SizedBox(
                  height: 6,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: const Text("Forgot Password?",
                          style: TextStyle(color: Colors.cyan))),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Align(
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width / 2,
              height: 48,
              onPressed: () {},
              color: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.cyan),
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}
