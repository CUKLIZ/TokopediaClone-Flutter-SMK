import 'package:flutter/material.dart';
import '../models/app_theme.dart';

enum SortOption { newest, priceLow, priceHigh, rating }

class SortFilterBar extends StatelessWidget {
  final SortOption selectedSort;
  final ValueChanged<SortOption> onSortChanged;

  const SortFilterBar({
    super.key,
    required this.selectedSort,
    required this.onSortChanged,
  });

  String get _sortLabel {
    switch (selectedSort) {
      case SortOption.newest:
        return 'Terbaru';
      case SortOption.priceLow:
        return 'Harga Terendah';
      case SortOption.priceHigh:
        return 'Harga Tertinggi';
      case SortOption.rating:
        return 'Rating Terbaik';
    }
  }

  void _showSortSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Text(
                  'Urutkan',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              const Divider(height: 1),
              ...SortOption.values.map((opt) {
                final labels = {
                  SortOption.newest: 'Terbaru',
                  SortOption.priceLow: 'Harga: Terendah ke Tertinggi',
                  SortOption.priceHigh: 'Harga: Tertinggi ke Terendah',
                  SortOption.rating: 'Rating Terbaik',
                };
                final icons = {
                  SortOption.newest: Icons.access_time_outlined,
                  SortOption.priceLow: Icons.arrow_upward,
                  SortOption.priceHigh: Icons.arrow_downward,
                  SortOption.rating: Icons.star_outline,
                };
                final isSelected = selectedSort == opt;
                return ListTile(
                  leading: Icon(
                    icons[opt],
                    color: isSelected ? AppColors.primary : AppColors.textSecondary,
                    size: 20,
                  ),
                  title: Text(
                    labels[opt]!,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                      color: isSelected ? AppColors.primary : AppColors.textPrimary,
                    ),
                  ),
                  trailing: isSelected
                      ? const Icon(Icons.check, color: AppColors.primary, size: 18)
                      : null,
                  onTap: () {
                    onSortChanged(opt);
                    Navigator.pop(context);
                  },
                );
              }),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          // Sort button
          GestureDetector(
            onTap: () => _showSortSheet(context),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary),
                borderRadius: BorderRadius.circular(20),
                color: AppColors.primary.withOpacity(0.05),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.sort, color: AppColors.primary, size: 15),
                  const SizedBox(width: 4),
                  Text(
                    _sortLabel,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.keyboard_arrow_down,
                      color: AppColors.primary, size: 15),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Filter chips
          _FilterChip(label: 'Di Bawah Rp500rb', onTap: () {}),
          const SizedBox(width: 6),
          _FilterChip(label: 'Rating 4+', onTap: () {}),
        ],
      ),
    );
  }
}

class _FilterChip extends StatefulWidget {
  final String label;
  final VoidCallback onTap;

  const _FilterChip({required this.label, required this.onTap});

  @override
  State<_FilterChip> createState() => _FilterChipState();
}

class _FilterChipState extends State<_FilterChip> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => _active = !_active);
        widget.onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: _active ? AppColors.primary : Colors.transparent,
          border: Border.all(
            color: _active ? AppColors.primary : AppColors.divider,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            fontSize: 12,
            color: _active ? Colors.white : AppColors.textSecondary,
            fontWeight: _active ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}