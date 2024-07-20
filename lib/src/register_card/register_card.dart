import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remixicon/remixicon.dart';
import 'package:ruqudi_app/src/components/navigation.dart';
import 'package:ruqudi_app/src/my_cards/my_card.dart';

class RegisterCard extends StatefulWidget {
  const RegisterCard({super.key});

  static const routeName = '/register';

  @override
  _RegisterCard createState() => _RegisterCard();
}

class _RegisterCard extends State<RegisterCard> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  Future<void> _openCamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = photo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Navigation(
          appBar: AppBar(),
        ),
        body: ListView(
          children: <Widget>[
            const Spacer(),
            if (_imageFile != null)
              Image.file(
                File(_imageFile!.path),
                width: 300,
                height: 150,
              )
            else
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
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 0,
                      ),
                      icon: IconButton(
                        onPressed: _openCamera,
                        icon: const Icon(
                          Remix.qr_scan_line,
                          color: Colors.blueAccent,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 1),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.restorablePushNamed(
                    context,
                    MyCards.routeName,
                  );
                },
                child: Text(
                  "Register as Customer",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Text(
                "OR",
                style: GoogleFonts.poppins(color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 36, left: 16, right: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.indigoAccent),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Register as Merchant",
                  style: GoogleFonts.poppins(color: Colors.blueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
