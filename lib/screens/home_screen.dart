import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/app_theme.dart'; // Menggunakan AppColors & AppTextStyles Anda
import '../widgets/product_card.dart';
import '../widgets/category_item.dart';
import '../widgets/promo_banner.dart';
import '../widgets/sort_filter_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedCategory = 'All';
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  SortOption _sortOption = SortOption.newest;
  
  bool _isLoading = false; 

  final List<Map<String, dynamic>> _categories = [
    {'label': 'Electronics', 'icon': Icons.devices_outlined},
    {'label': 'Food', 'icon': Icons.fastfood_outlined},
    {'label': 'Deals', 'icon': Icons.local_offer_outlined},
    {'label': 'Fashion', 'icon': Icons.checkroom_outlined},
  ];

  List<Product> get _filteredProducts {
    List<Product> products = List.from(sampleProducts);

    if (_selectedCategory != 'All') {
      products = products.where((p) => p.category == _selectedCategory).toList();
    }

    if (_searchQuery.isNotEmpty) {
      products = products
          .where((p) => p.name.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }

    switch (_sortOption) {
      case SortOption.priceLow:
        products.sort((a, b) => a.price.compareTo(b.price));
        break;
      case SortOption.priceHigh:
        products.sort((a, b) => b.price.compareTo(a.price));
        break;
      case SortOption.rating:
        products.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      case SortOption.newest:
        break;
    }

    return products;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.primary,
            pinned: true, 
            floating: true,
            elevation: 0,
            expandedHeight: 104.0,
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: _searchController,
                        onChanged: (val) => setState(() => _searchQuery = val),
                        style: const TextStyle(fontSize: 13, color: AppColors.textPrimary),
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 13,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.textSecondary,
                            size: 18,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 9),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.mail_outline, color: Colors.white, size: 22),
                    onPressed: () {},
                    constraints: const BoxConstraints(),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_none, color: Colors.white, size: 22),
                    onPressed: () {},
                    constraints: const BoxConstraints(),
                    padding: const EdgeInsets.only(right: 16, left: 8),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(28),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on, 
                      color: Colors.white, 
                      size: 13,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Send To ',
                      style: TextStyle(
                        fontSize: 11, 
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    const Text(
                      'Your Address',
                      style: TextStyle(
                        fontSize: 11, 
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Icon(
                      Icons.keyboard_arrow_down, 
                      color: Colors.white, 
                      size: 13,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _categories.map((cat) {
                  return CategoryItem(
                    icon: cat['icon'] as IconData,
                    label: cat['label'] as String,
                    isSelected: _selectedCategory == cat['label'],
                    onTap: () {
                      setState(() {
                        _selectedCategory =
                            _selectedCategory == cat['label']
                                ? 'All'
                                : cat['label'] as String;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 12, bottom: 4),
              child: PromoBanner(),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _selectedCategory == 'All'
                            ? 'Interesting Shopping Today'
                            : _selectedCategory,
                        style: AppTextStyles.sectionTitle,
                      ),
                      Text(
                        '${_filteredProducts.length} items',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                SortFilterBar(
                  selectedSort: _sortOption,
                  onSortChanged: (opt) =>
                      setState(() => _sortOption = opt),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),

          _isLoading
              ? const SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Text('Shimmer Effect Placeholder...'),
                    ),
                  ),
                )
              : _filteredProducts.isEmpty
                  ? SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.search_off_rounded,
                                size: 60, color: Colors.grey[300]),
                            const SizedBox(height: 12),
                            Text(
                              'No products found',
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    )
                  : SliverPadding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => ProductCard(
                            product: _filteredProducts[index],
                          ),
                          childCount: _filteredProducts.length,
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.65,
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}