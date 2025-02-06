import 'package:flutter/material.dart';



class OrderTrack extends StatelessWidget {
  const OrderTrack({super.key});

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Order ID-OD89656689476733', style: TextStyle(fontSize: 14)),
                TextButton(
                  onPressed: () {},
                  child: const Text('Invoice', style: TextStyle(color: Colors.blue, fontSize: 14)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Order date', style: TextStyle(fontSize: 14)),
                    Text('12-03-2025, 09:45:00pm', style: TextStyle(fontSize: 14)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('expected Delivery', style: TextStyle(fontSize: 14)),
                    Text('12-03-2025, 09:45:00pm', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Order Details', style: TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 2, // Adjust flex as needed
                  child: const Text('Two Kids car tere bin\nkaha jau mai'),
                ),
                Expanded(
                  flex: 1, // Adjust flex as needed
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9nS5p29_yq2m7h1-jT7x39Jq9f9z72o9oAA&usqp=CAU', // Replace with your image URL
                    height: 80, // Adjust height as needed
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            _buildAddress('From', '32/b krishna nagar,\ndelhi-110051'),
            const SizedBox(height: 16),
            _buildAddress('To', '13-b ground floor,\nbadaggaon pone;\n3613477'),
            const SizedBox(height: 16),
            _buildDetail('Driver', 'sanjay gulati', showRating: true),

            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0A49A8),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text('Check Updates'),
            ),
            const SizedBox(height: 24),
            const Text('Order summery', style: TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 16),
            _buildSummaryItem('Payment', 'UPI-jaysingh229-413@ybl'),
            _buildSummaryItem('Price', '750.00'),
            _buildSummaryItem('dicount', '100.00'),
            _buildSummaryItem('Convenience', '50.00'),
            _buildSummaryItem('Platform', '30:00'),
            _buildSummaryTotal('Total', '730.00'),
          ],
        ),
      ),
    );
  }

  Widget _buildAddress(String title, String address) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        Text(address),
      ],
    );
  }

  Widget _buildDetail(String title, String value, {bool showRating = false}) {
    return Row(
      children: [
        Text('$title: $value'),
        if (showRating) ...[
          const SizedBox(width: 8),
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
      ],
    );
  }

  Widget _buildSummaryItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildSummaryTotal(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}