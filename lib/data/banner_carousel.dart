import 'package:banner_carousel/banner_carousel.dart';
import 'package:loginform/data/modeProduct.dart';
import 'package:loginform/data/shoByCategoryModel.dart';

// List listBanners = [
//   'assets/div.slick-list.png'
//       'assets/nest.png'
// ];

List<BannerModel> listBanners = [
  BannerModel(imagePath: 'assets/banner2.png', id: "1"),
  BannerModel(imagePath: 'assets/nest.png', id: "2"),
];

List<Product> products = [
  Product(
      name: 'Hodo Foods',
      image: 'assets/prd1.png',
      // image: 'assets/nest.png',
      description: "All Natural Italian- Style Chicken Meatballs",
      rating: 35,
      company: 'Stouffer',
      oldPrice: 52.85,
      price: 55.8),
  Product(
    name: 'Snack',
    image: 'assets/prd2.png',
    description: 'Seeds of Change Organic Quinoa, Brown, & Red Rice',
    rating: 4.0,
    company: 'NestFood',
    oldPrice: 32.8,
    price: 28.85,
  ),
  Product(
    name: 'Meats',
    image: 'assets/prd3.png',
    description: 'Canada Dry Ginger Ale  2 L Bottle - 200ml - 400g',
    rating: 4.0,
    company: 'NestFood',
    oldPrice: 32.85,
    price: 33.8,
  ),
  Product(
    name: 'Hodo Foods',
    image: 'assets/prd4.png',
    description: 'Chobani Complete Vanilla Greek Yogurt',
    rating: 4.0,
    company: 'NestFood',
    oldPrice: 32.85,
    price: 33.8,
  ),
  Product(
    name: 'Vegetables',
    image: 'assets/prd5.png',
    description: 'Foster Farms Takeout Crispy Classic Buffalo Wings',
    rating: 4.0,
    company: 'NestFood',
    oldPrice: 32.85,
    price: 33.8,
  ),
  Product(
    name: 'Coffes',
    image: 'assets/prd6.png',
    description: 'Gorton’s Beer Battered Fish Fillets with soft paper',
    rating: 4.0,
    company: 'Old El Paso',
    oldPrice: 25.85,
    price: 23.8,
  ),
  // Add more products as needed
];

List<CategoryList> items = [
  CategoryList(image: 'assets/cat1.png', name: 'Milk & Dairies'),
  CategoryList(image: 'assets/cat2.png', name: 'Wines & Alcahol'),
  CategoryList(image: 'assets/cat3.png', name: 'Clothings & Beauty'),
  CategoryList(image: 'assets/cat2.png', name: 'Pet Foods &Toy')
];
