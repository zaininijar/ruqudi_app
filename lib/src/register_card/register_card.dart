import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:ruqudi_app/src/components/navigation.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});
  static const routeName = '/register_card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navigation(
        appBar: AppBar(),
      ),
      body: Column(
        children: <Widget>[
          const Spacer(),
          SizedBox(
            width: 200,
            child: Image.asset('assets/images/real-bank-card.png'),
          ),
          Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.indigoAccent),
                    borderRadius: BorderRadius.circular(8)),
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 0,
                    ),
                    icon: Icon(
                      Remix.qr_scan_line,
                      color: Colors.blueAccent,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(flex: 1),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
