import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    content: Center(child: Text('This is a snackbar')),
                  ),
                );
              },
              child: const Text('Main Page'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login Page'),
            ),
            Text(
              "this is headline large",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "this is headline medium",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "this is headline small",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "this is body large",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "this is body medium ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "this is body small ",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              "this is title  large",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "this is title  medium",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "this is title  small",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "this is display large",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              "this is display medium ",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "this is display small",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              "this is label large",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              "this is label medium",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              "this is label small",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Materail Button"),
            )
          ],
        ),
      ),
    );
  }
}
