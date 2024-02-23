import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend_flutter/backend/authentication/authenticator.dart';
import 'package:frontend_flutter/pages/auth/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  login(String email, String password) async {
    await Authenticator().login(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            SvgPicture.asset(
              "assets/icons/auth/register_logo.svg",
              height: 150,
              width: 100,
              colorFilter:
                  const ColorFilter.mode(Colors.cyanAccent, BlendMode.srcIn),
            ),
            const SizedBox(
              height: 80,
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
                          color: Colors.white,
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
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.4)),
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
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        isDense: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.cyan,
                        ),
                        label: Text(
                          "Password",
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.8)),
                        ),
                        hintText: "********",
                        suffixIcon: TextButton(
                            onPressed: () {},
                            child: const Text("show",
                                style: TextStyle(color: Colors.cyan)))),
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
              height: 30,
            ),
            Align(
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width / 2,
                height: 48,
                onPressed: () {
                  login(emailController.text, passwordController.text);
                },
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
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SignUpPage()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.cyan),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    " OR ",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.white.withOpacity(0.6),
                        ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.red.withOpacity(0.8),
                      child: SvgPicture.asset(
                        "assets/icons/auth/google_sign.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.withOpacity(0.8),
                      child: SvgPicture.asset(
                        "assets/icons/auth/facebook_sign.svg",
                        height: 32,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
