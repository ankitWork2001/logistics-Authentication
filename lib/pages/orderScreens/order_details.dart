import 'package:flutter/material.dart';


class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Text('Order Details', style: TextStyle(fontWeight: FontWeight.w500)),
        centerTitle: true,
      ),
      body: SingleChildScrollView( // For scrollable content
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildOrderButton('Track Order', const Color(0xFF0A49A8)), // Dark Blue
            const SizedBox(height: 16),
            _buildOrderButton('Canceled order', const Color(0xFF0A49A8)), // Dark Blue
            const SizedBox(height: 16),
            _buildOrderButton('Privious order', const Color(0xFFE53935)), // Red
            const SizedBox(height: 24),
            _buildOrderItem(
              name: '3 Almirah and some chairs',
              date: '22nd Dec 2024, 12:35 pm',
              address: '32/3 voisholl, krisno nagor dethi 110051',
            ),
            _buildOrderItem(
              name: '3 Almirah and some chairs',
              date: '22nd Dec 2024, 12:30 pm',
              address: '32/3 vaishal, krisna nagor deth 110051',
            ),
            _buildOrderItem(
              name: '3 Almirah and some chairs',
              date: '22nd Dec 2014, 12:35 pm',
              address: '32/3 vaishal, krisna nagar deini 11005',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: Text(text),
    );
  }

  Widget _buildOrderItem({required String name, required String date, required String address}) {
    return Card( // Use Card for a visually distinct item
      elevation: 2, // Add a subtle shadow
      margin: const EdgeInsets.only(bottom: 16), // Space between items
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Text('Placed At: $date', style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 8),
            Text('Address: $address', style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle view details
                  },
                  child: const Text('View Details'),
                ),
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.yellow[700]),
                    Icon(Icons.star, size: 16, color: Colors.yellow[700]),
                    Icon(Icons.star, size: 16, color: Colors.yellow[700]),
                    Icon(Icons.star, size: 16, color: Colors.yellow[700]),
                    Icon(Icons.star_border, size: 16, color: Colors.yellow[700]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}