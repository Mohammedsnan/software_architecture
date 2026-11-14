import 'package:flutter/material.dart';
import 'package:software_architecture/widgets/home/home_services_grid.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Color(0xFFFF9E67),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi there',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Stanislav Kashchishen ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://tse4.mm.bing.net/th/id/OIP.5kQWTdeJ5EL3U7hmINNW_AHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.error,
                        color: Colors.grey,
                        size: 32.0,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              _buildActionItem(
                icon: Icons.help_outline,
                label: 'Help',
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              const SizedBox(width: 4),
              _buildActionItem(
                icon: Icons.account_balance_wallet_outlined,
                label: 'Wallet',
                borderRadius: BorderRadius.circular(5),
              ),
              const SizedBox(width: 4),
              _buildActionItem(
                icon: Icons.tips_and_updates_outlined,
                label: 'Trips',
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildActionItem({
  required IconData icon,
  required String label,
  required BorderRadius borderRadius,
}) {
  return TextButton(
    onPressed: () {
    },
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      
    ),
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.black, borderRadius: borderRadius),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 36),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    ),
  );
}
