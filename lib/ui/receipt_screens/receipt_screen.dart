import 'package:e_reciept/ui/receipt_screens/add_receipt.dart';
import 'package:e_reciept/utils/receipt_preview_item.dart';
import 'package:flutter/material.dart';
import '../../utils/navigation_drawer.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({super.key});

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const SideBarMenu(),
        appBar: AppBar(
          title: const Text('Bills'),
          backgroundColor: Colors.blue,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: const Icon(Icons.add_box),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddReceipt(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        body: const SafeArea(
          child: Column(
            children: [
              ReceiptPreview(
                amount: '22.00',
                company: 'Apple',
                date: '22/01/24',
              ),
              ReceiptPreview(
                amount: '40.00',
                company: 'Walmart',
                date: '23/01/24',
              ),
              ReceiptPreview(
                amount: '40.00',
                company: 'PriceSmart',
                date: '23/01/24',
              ),
            ],
          ),
        ),
      );
}
