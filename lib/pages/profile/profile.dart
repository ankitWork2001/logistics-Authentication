import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center( // Center the image
              child: CircleAvatar( // Or just Image.asset/network
                radius: 50, // Adjust size as needed
                // backgroundImage: const AssetImage('assets/profile_image.jpg'), // Replace with your image path
                // // Or use NetworkImage:
                // // backgroundImage: const NetworkImage('https://your-image-url.com/profile_image.jpg'),
                // // You can also use a placeholder while loading:
                foregroundImage: const AssetImage('assets/placeholder_image.jpg'), // Optional placeholder
              ),
            ),
            Center(
              child: const Text(
                'Meonardo de cpario', // Replace with actual name
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(child: const Text('leonard336e@gmail.com')), // Replace with actual email
            const SizedBox(height: 16),
            _buildProfileMenuItem(Icons.person, 'My profile'),
            _buildProfileMenuItem(Icons.payment, 'Payment methods'),
            _buildProfileMenuItem(Icons.shopping_cart, 'Orders'),
            _buildProfileMenuItem(Icons.star, 'Rating'),
            _buildProfileMenuItem(Icons.help, 'Help & support'),
            const SizedBox(height: 16),
            Spacer(),
            Center( // Center the logout button
              child: ElevatedButton(
                onPressed: () {
                  // Handle logout logic here
                },
                child: const Text('Logout'),
              ),
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }

  Widget _buildProfileMenuItem(IconData icon, String text) {
    return InkWell( // Makes the list items tappable
      onTap: () {
        // Handle navigation or actions for each item
        print('Tapped on $text'); // Example: print to console
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 16),
            Text(text),
          ],
        ),
      ),
    );
  }
}
