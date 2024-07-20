import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:ruqudi_app/src/components/navigation.dart';
import 'package:ruqudi_app/src/my_cards/_partials/history_transaction_list.dart';
import 'package:ruqudi_app/src/my_cards/_partials/search_transaction.dart';

List historyTransactions = [
  {
    'id': '1',
    'type': 'Income',
    'accountName': 'John Doe',
    'createdAt': '2023-07-01',
    'nominal': 1500,
  },
  {
    'id': '2',
    'type': 'Outcome',
    'accountName': 'Jane Smith',
    'createdAt': '2023-07-02',
    'nominal': 800,
  },
  {
    'id': '3',
    'type': 'Income',
    'accountName': 'Alice Johnson',
    'createdAt': '2023-07-03',
    'nominal': 2000,
  },
  {
    'id': '4',
    'type': 'Outcome',
    'accountName': 'Bob Brown',
    'createdAt': '2023-07-04',
    'nominal': 600,
  },
  {
    'id': '5',
    'type': 'Income',
    'accountName': 'Charlie Davis',
    'createdAt': '2023-07-05',
    'nominal': 2500,
  },
];

class HistoryTransactionModel {
  final String id;
  final String type;
  final String accountName;
  final String createdAt;
  final int nominal;

  const HistoryTransactionModel({
    required this.id,
    required this.type,
    required this.accountName,
    required this.createdAt,
    required this.nominal,
  });
}

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  static const routeName = '/my_cards';

  @override
  State<MyCards> createState() => _MyCards();
}

class _MyCards extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navigation(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 12,
              ),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Visa",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        "** 1310",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Balance",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  Text(
                    "USD 13,970.10",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "John Doe",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.white),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        icon: const Icon(
                          Remix.arrow_up_line,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () => {},
                        label: Text(
                          "Transfer",
                          style: GoogleFonts.poppins(
                            color: Colors.blueAccent,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.white),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        icon: const Icon(
                          Icons.nfc,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () => {},
                        label: Text(
                          "Pay NFC",
                          style: GoogleFonts.poppins(
                            color: Colors.blueAccent,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 48),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Transaction",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () => {},
                        icon: const Icon(
                          Remix.more_line,
                        ),
                      ),
                    ],
                  ),
                  const SearchTransaction(),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: historyTransactions.length,
                      separatorBuilder: (_, __) => const Divider(
                        height: 28,
                        color: Color.fromARGB(255, 243, 243, 243),
                      ),
                      itemBuilder: (context, index) => HistoryTransactionList(
                        historyTransactions[index]['id'],
                        historyTransactions[index]['type'],
                        historyTransactions[index]['accountName'],
                        historyTransactions[index]['createdAt'],
                        historyTransactions[index]['nominal'],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
