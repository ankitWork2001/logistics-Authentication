import 'package:flutter/material.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press here (e.g., Navigator.pop)
            Navigator.pop(context);
          },
        ),
        title: const Text(''), // Empty title
        centerTitle: true, // Center the back button
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildInputField('UPI', 'jay346726@ybl', isEditable: true),
            const SizedBox(height: 16),
            const Text('BankAccount', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildInputField('Account holder', ''),
            _buildInputField('Bank No', ''),
            _buildInputField('Account No', ''),
            _buildInputField('IFCE', ''),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle save button press here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0A49A8), // Dark blue background
                foregroundColor: Colors.white, // White text
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String initialValue, {bool isEditable = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 4),
        TextFormField(
          initialValue: initialValue,
          enabled: isEditable,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          ),
        ),
      ],
    );
  }
}