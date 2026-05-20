class Product {
  final String id;
  final String name;
  final double price;
  final double rating;
  final String imagePath;
  final String category;
  final String description;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.rating,
    required this.imagePath,
    required this.category,
    required this.description,
  });
}

final List<Product> sampleProducts = [
  Product(
    id: '1',
    name: 'Wireless Headphones',
    price: 299000,
    rating: 4.8,
    imagePath: 'assets/images/61RahTQtAqL._AC_UF894,1000_QL80_.jpg',
    category: 'Electronics',
    description:
        'High-quality wireless headphones with active noise cancellation. Perfect for music lovers who want an immersive audio experience.',
  ),
  Product(
    id: '2',
    name: 'iPhone 15 Pro',
    price: 19990000,
    rating: 4.9,
    imagePath: 'assets/images/apple_iphone_15_pro_max_natural_titanium_1_1_2.jpg',
    category: 'Electronics',
    description:
        'The latest iPhone with titanium design, A17 Pro chip, and an advanced camera system that captures stunning photos and videos.',
  ),
  Product(
    id: '3',
    name: 'White Sneakers',
    price: 450000,
    rating: 4.5,
    imagePath: 'assets/images/b56b1f4bd063c6cb0cf78c09a7afa956.jpg_960x960q80.jpg_.webp',
    category: 'Fashion',
    description:
        'Classic white sneakers made from premium materials. Comfortable for everyday use and easy to pair with any outfit.',
  ),
  Product(
    id: '4',
    name: 'Fresh Avocados',
    price: 25000,
    rating: 4.2,
    imagePath: 'assets/images/1.jpg',
    category: 'Food',
    description:
        'Fresh organic avocados sourced from local farms. Rich in healthy fats and perfect for salads, toast, or smoothies.',
  ),
  Product(
    id: '5',
    name: 'Smart Watch',
    price: 1299000,
    rating: 4.7,
    imagePath: 'assets/images/gama_BL.webp',
    category: 'Electronics',
    description:
        'Feature-packed smartwatch with health tracking, GPS, and 7-day battery life. Compatible with both iOS and Android.',
  ),
  Product(
    id: '6',
    name: 'Casual T-Shirt',
    price: 120000,
    rating: 4.3,
    imagePath: 'assets/images/a87b78284dd3b0de61a9ee0d27350496.jpg',
    category: 'Fashion',
    description:
        'Comfortable 100% cotton casual t-shirt. Available in multiple colors and sizes. Perfect for everyday casual wear.',
  ),
  // === DUMMY DATA BARU ===
  Product(
    id: '7',
    name: 'Premium Honey 500g',
    price: 145000,
    rating: 4.8,
    imagePath: 'assets/images/WhatsApp_Image_2024-12-06_at_09.17.28_1738815951.jpeg',
    category: 'Food',
    description:
        '100% pure raw honey harvested from wild forest blossoms. Rich in antioxidants and natural sweetness.',
  ),
  Product(
    id: '8',
    name: 'Mechanical Keyboard RGB',
    price: 799000,
    rating: 4.7,
    imagePath: 'assets/images/download.jpeg',
    category: 'Electronics',
    description:
        'Sleek tenkeyless mechanical keyboard with customizable RGB backlighting and linear red switches for smooth typing and gaming.',
  ),
  Product(
    id: '9',
    name: 'Slim Fit Denim Jeans',
    price: 349000,
    rating: 4.4,
    imagePath: 'assets/images/SLIMFITDENIMJEANSINNAVY_10_f23a27c7-1aef-4623-a0b6-8813a4bbf4de.avif',
    category: 'Fashion',
    description:
        'Stylish and durable slim-fit denim jeans made with comfortable stretch fabric. Ideal for versatile casual styles.',
  ),
  Product(
    id: '10',
    name: 'Organic Green Tea Bag',
    price: 48000,
    rating: 4.6,
    imagePath: 'assets/images/2.avif',
    category: 'Food',
    description:
        'Refreshing organic green tea bags packed with natural antioxidants to help boost metabolism and promote wellness.',
  ),
  Product(
    id: '11',
    name: 'Bluetooth Speaker Portable',
    price: 549000,
    rating: 4.6,
    imagePath: 'assets/images/Primary-image_white-1.webp',
    category: 'Electronics',
    description:
        'Compact waterproof Bluetooth speaker delivering powerful 360-degree stereo sound with up to 12 hours of playtime.',
  ),
  Product(
    id: '12',
    name: 'Leather Bomber Jacket',
    price: 899000,
    rating: 4.7,
    imagePath: 'assets/images/imgi_72_Y-3_NBHD_Leather_Bomber_Jacket_Black_KT4301_01_00_standard.webp',
    category: 'Fashion',
    description:
        'Premium synthetic leather bomber jacket featuring an inner quilted lining and classic ribbed cuffs. Timeless fashion statement.',
  ),
  Product(
    id: '13',
    name: 'Powerbank 10000mAh (Flash Sale)',
    price: 99000,
    rating: 4.5,
    imagePath: 'assets/images/b8d6519557349feeb45446476685080e.jpg_720x720q80.jpg',
    category: 'Deals',
    description:
        'Super slim dual USB fast-charging powerbank. Grab this limited budget-friendly deal to keep your devices charged on the go.',
  ),
  Product(
    id: '14',
    name: 'Ergonomic Backpack (Promo)',
    price: 189000,
    rating: 4.6,
    imagePath: 'assets/images/7e52fa194a7223651989a40f3fc4b738.jpeg',
    category: 'Deals',
    description:
        'Water-resistant travel backpack with an integrated laptop sleeve and comfortable padded shoulder straps at an unbeatable price.',
  ),
];