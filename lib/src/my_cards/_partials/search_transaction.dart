import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

class SearchTransaction extends StatefulWidget {
  const SearchTransaction({super.key});

  @override
  State<SearchTransaction> createState() => _SearchTransactionState();
}

class _SearchTransactionState extends State<SearchTransaction> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      viewBackgroundColor: Colors.white,
      builder: (BuildContext context, SearchController controller) {
        return TextField(
          textAlign: TextAlign.start,
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Remix.search_line,
              color: Colors.black26,
            ),
            hintText: 'Search transaction',
            hintStyle: GoogleFonts.poppins(fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  width: 1, color: Color.fromARGB(255, 190, 209, 255)),
            ),
            filled: true,
            contentPadding: const EdgeInsets.all(16),
            fillColor: Colors.white,
          ),
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {
              setState(() {
                controller.closeView(item);
              });
            },
          );
        });
      },
    );
  }
}
