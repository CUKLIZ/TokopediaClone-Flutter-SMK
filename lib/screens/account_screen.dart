import 'package:flutter/material.dart';
import '../models/app_theme.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // Header
          Container(
            color: AppColors.primary,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, User!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 8),
                _buildSection('Transaksi', [
                  _menuItem(Icons.receipt_long_outlined, 'My Orders'),
                  _menuItem(Icons.local_shipping_outlined, 'Track Delivery'),
                  _menuItem(Icons.rate_review_outlined, 'My Review'),
                ]),
                const SizedBox(height: 8),
                _buildSection('Account', [
                  _menuItem(Icons.account_circle_outlined, 'My Profile'),
                  _menuItem(Icons.location_on_outlined, 'Address'),
                  _menuItem(Icons.payment_outlined, 'Payment Method'),
                  _menuItem(Icons.settings_outlined, 'Settings'),
                ]),
                const SizedBox(height: 8),
                _buildSection('Other', [
                  _menuItem(Icons.help_outline, 'Help'),
                  _menuItem(Icons.info_outline, 'About Tokopedia'),
                  _menuItem(Icons.logout, 'Logout',
                      color: Colors.red),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> items) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.textSecondary,
                letterSpacing: 0.5,
              ),
            ),
          ),
          ...items,
        ],
      ),
    );
  }

  Widget _menuItem(IconData icon, String label, {Color? color}) {
    return ListTile(
      leading: Icon(icon, color: color ?? AppColors.primary, size: 22),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: color ?? AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.chevron_right, color: AppColors.textSecondary, size: 20),
      dense: true,
      onTap: () {},
    );
  }
}