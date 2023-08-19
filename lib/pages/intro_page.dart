import 'package:flutter/material.dart';

import 'home.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 380,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff5AE4A7)),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/images/intro.jpg"))),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Learn what you want with coursy",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Coursy be able to support for your learning journey.",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff374957).withOpacity(.5)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    alignment: Alignment.centerLeft),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff5AE4A7)),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
