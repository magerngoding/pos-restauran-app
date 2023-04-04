import 'package:hyper_ui/service/product_service/product_service.dart';

class DummyService {
  List<Map<String, dynamic>> productList = [
    {
      'id': 1,
      'photo':
          'https://w7.pngwing.com/pngs/480/301/png-transparent-food-dish-main-course-cuisine-garnish-western-recipes-recipe-cooking-snack-thumbnail.png',
      'product_name': 'Nasi Goreng',
      'price': 25000.0,
      'category': 'Makanan',
      'description': 'Nasi goreng dengan bumbu rempah yang lezat'
    },
    {
      'id': 2,
      'photo':
          'https://w7.pngwing.com/pngs/480/301/png-transparent-food-dish-main-course-cuisine-garnish-western-recipes-recipe-cooking-snack-thumbnail.png',
      'product_name': 'Sate Ayam',
      'price': 20000.0,
      'category': 'Makanan',
      'description':
          'Potongan ayam yang ditusuk dan dibakar dengan bumbu kacang'
    },
    {
      'id': 3,
      'photo':
          'https://w7.pngwing.com/pngs/480/301/png-transparent-food-dish-main-course-cuisine-garnish-western-recipes-recipe-cooking-snack-thumbnail.png',
      'product_name': 'Nasi Uduk',
      'price': 15000.0,
      'category': 'Makanan',
      'description': 'Nasi yang dimasak dengan santan dan rempah-rempah'
    },
    {
      'id': 4,
      'photo':
          'https://w7.pngwing.com/pngs/480/301/png-transparent-food-dish-main-course-cuisine-garnish-western-recipes-recipe-cooking-snack-thumbnail.png',
      'product_name': 'Rendang',
      'price': 35000.0,
      'category': 'Makanan',
      'description': 'Daging sapi yang dimasak dengan santan dan rempah-rempah'
    },
    {
      'id': 5,
      'photo':
          'https://w7.pngwing.com/pngs/480/301/png-transparent-food-dish-main-course-cuisine-garnish-western-recipes-recipe-cooking-snack-thumbnail.png',
      'product_name': 'Gado-gado',
      'price': 20000.0,
      'category': 'Makanan',
      'description': 'Sayuran segar yang disiram dengan saus kacang'
    },
    {
      'id': 6,
      'photo':
          'https://w7.pngwing.com/pngs/480/301/png-transparent-food-dish-main-course-cuisine-garnish-western-recipes-recipe-cooking-snack-thumbnail.png',
      'product_name': 'Soto',
      'price': 25000.0,
      'category': 'Makanan',
      'description': 'Kuah kaldu yang diisi dengan daging dan sayuran'
    },
    // {
    //   'id': 7,
    //   'photo': 'unsplash: Ayam Goreng',
    //   'product_name': 'Ayam Goreng',
    //   'price': 20000.0,
    //   'category': 'Makanan',
    //   'description': 'Potongan ayam yang digoreng dengan bumbu rempah'
    // },
    // {
    //   'id': 8,
    //   'photo': 'unsplash: Mie Goreng',
    //   'product_name': 'Mie Goreng',
    //   'price': 25000.0,
    //   'category': 'Makanan',
    //   'description': 'Mie yang digoreng dengan bumbu rempah dan sayuran'
    // },
    // {
    //   'id': 9,
    //   'photo': 'unsplash: Nasi Padang',
    //   'product_name': 'Nasi Padang',
    //   'price': 30000.0,
    //   'category': 'Makanan',
    //   'description': 'Nasi dengan lauk-pauk khas Padang'
    // },
    // {
    //   "id": 10,
    //   "photo": "unsplash: Es Campur",
    //   "product_name": "Es Campur",
    //   "price": 10000.0,
    //   "category": "Minuman",
    //   "description": "Es campur dengan aneka buah",
    // }
  ];
  generate() async {
    for (var item in productList) {
      await ProductService().create(
        photo: item['photo'],
        productName: item['product_name'],
        price: item['price'],
        category: item['category'],
        description: item['description'],
      );
    }
  }
}
