import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 100,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Destiny Ayomah',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffDFB555),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/webViewContainer');
                },
                child: const Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child:
                          Image(image: AssetImage('assets/images/github.png')),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Open GitHub',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
