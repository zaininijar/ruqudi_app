import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

class HistoryTransactionList extends StatelessWidget {
  final String id;
  final String type;
  final String accountName;
  final String createdAt;
  final int nominal;

  const HistoryTransactionList(
    this.id,
    this.type,
    this.accountName,
    this.createdAt,
    this.nominal, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (type == 'Income')
                const Icon(
                  Remix.arrow_up_line,
                  color: Colors.greenAccent,
                  size: 12,
                )
              else
                const Icon(
                  Remix.arrow_down_line,
                  color: Colors.redAccent,
                  size: 12,
                ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    accountName,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Today, 6.00 AM",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
          Text(
            "+ USD 3000",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
