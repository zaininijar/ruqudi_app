import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Text",
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const Spacer(flex: 1),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
            decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
