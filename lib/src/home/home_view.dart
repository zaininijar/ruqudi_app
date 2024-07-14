import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:ruqudi_app/src/components/navigation.dart';
import 'package:ruqudi_app/src/register_card/register_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navigation(
        appBar: AppBar(),
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset('assets/images/real-bank-card.png'),
          const Spacer(
            flex: 1,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.indigoAccent),
            child: TextButton(
              onPressed: () {
                Navigator.restorablePushNamed(
                  context,
                  RegisterCard.routeName,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Remix.add_fill,
                    color: Colors.white,
                  ),
                  Text(
                    'Register your card to start payments',
                    style: GoogleFonts.poppins(color: Colors.white),
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
