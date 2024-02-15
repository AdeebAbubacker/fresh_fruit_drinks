import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1.5,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Items();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 30,
        height: 180,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 243, 243),
            borderRadius: const BorderRadius.all(
              Radius.circular(9),
            ),
            border: Border.all(color: Colors.blueAccent)),
        child: Image.asset('assets/kiwi.png'),
      ),
    );
  }
}
