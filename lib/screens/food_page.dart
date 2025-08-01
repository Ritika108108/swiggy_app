import 'package:flutter/material.dart';
import '../widgets/food_card.dart';
import '../widgets/search_bar.dart';
import '../widgets/bottom_nav.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foodItems = [
      {
        "name": "Charcoal Eat...",
        "image": "assets/images/food1.jpeg",
        "rating": 4.1,
        "time": "25-30 min",
        "category": "Biryani",
        "offer": "50% OFF",
        "isAd": true,
      },
      {
        "name": "KFC",
        "image": "assets/images/food2.jpeg",
        "rating": 4.3,
        "time": "15-20 min",
        "category": "Burgers",
        "offer": "ITEMS AT ₹59",
      },
      {
        "name": "B Burger - Big...",
        "image": "assets/images/food3.jpeg",
        "rating": 4.3,
        "time": "25-30 min",
        "category": "Burgers",
        "offer": "ITEMS AT ₹99",
        "dealsLeft": 10,
      },
      {
        "name": "The Tandoori...",
        "image": "assets/images/food4.jpeg",
        "rating": 4.0,
        "time": "30-35 min",
        "category": "Biryani",
      },
      {
        "name": "Pizza Hub",
        "image": "assets/images/food5.jpeg",
        "rating": 4.2,
        "time": "20-25 min",
        "category": "Pizza",
      },
      {
        "name": "Wrap & Roll",
        "image": "assets/images/food6.jpeg",
        "rating": 4.5,
        "time": "15-20 min",
        "category": "Wraps",
      },
      {
        "name": "Salad Point",
        "image": "assets/images/food7.jpeg",
        "rating": 4.4,
        "time": "10-15 min",
        "category": "Salads",
      },
      {
        "name": "Sweet Treats",
        "image": "assets/images/food8.jpeg",
        "rating": 4.7,
        "time": "20-25 min",
        "category": "Desserts",
      },
      {
        "name": "Juice Bar",
        "image": "assets/images/food9.png",
        "rating": 4.6,
        "time": "5-10 min",
        "category": "Juices",
      },
      {
        "name": "Vegan Delight",
        "image": "assets/images/food10.png",
        "rating": 4.3,
        "time": "25-30 min",
        "category": "Vegan",
      },
    ];

    final List<Map<String, dynamic>> restaurants = [
      {
        "name": "Oliva Veg",
        "image": "assets/images/restaurant1.jpeg",
        "rating": 4.5,
        "reviews": 333,
        "location": "Kothrud",
        "distance": "4.4 km",
        "cuisine": "North Indian, Chinese",
        "price": "₹600 for two",
        "offer": "40% off upto ₹80",
        "time": "30–35 MINS",
      },
      {
        "name": "The Garden Cafe",
        "image": "assets/images/restaurant2.jpeg",
        "rating": 4.3,
        "reviews": 289,
        "location": "FC Road",
        "distance": "2.9 km",
        "cuisine": "Healthy, Salads",
        "price": "₹450 for two",
        "offer": "30% off",
        "time": "25–30 MINS",
      },
      {
        "name": "Spice Route",
        "image": "assets/images/restaurant3.jpeg",
        "rating": 4.6,
        "reviews": 412,
        "location": "Baner",
        "distance": "3.6 km",
        "cuisine": "Indian, Thai",
        "price": "₹700 for two",
        "offer": "Flat 20% off",
        "time": "40–45 MINS",
      },
      {
        "name": "Urban Bites",
        "image": "assets/images/restaurant4.jpeg",
        "rating": 4.4,
        "reviews": 205,
        "location": "Deccan",
        "distance": "2.0 km",
        "cuisine": "Fast Food",
        "price": "₹500 for two",
        "offer": "Free Dessert",
        "time": "20–25 MINS",
      },
      {
        "name": "Leafy Bowls",
        "image": "assets/images/restaurant5.jpeg",
        "rating": 4.2,
        "reviews": 198,
        "location": "Model Colony",
        "distance": "2.5 km",
        "cuisine": "Salads, Vegan",
        "price": "₹350 for two",
        "offer": "10% Cashback",
        "time": "15–20 MINS",
      },
      {
        "name": "Tandoor & Grill",
        "image": "assets/images/restaurant6.jpeg",
        "rating": 4.7,
        "reviews": 489,
        "location": "Aundh",
        "distance": "5.0 km",
        "cuisine": "Tandoori, BBQ",
        "price": "₹850 for two",
        "offer": "Buy 1 Get 1",
        "time": "35–40 MINS",
      },
      {
        "name": "Mom's Kitchen",
        "image": "assets/images/restaurant7.jpeg",
        "rating": 4.5,
        "reviews": 300,
        "location": "Warje",
        "distance": "4.1 km",
        "cuisine": "Home Style",
        "price": "₹300 for two",
        "offer": "Flat ₹50 OFF",
        "time": "30–35 MINS",
      },
      {
        "name": "Burger House",
        "image": "assets/images/restaurant8.jpeg",
        "rating": 4.3,
        "reviews": 390,
        "location": "Sinhagad Road",
        "distance": "3.2 km",
        "cuisine": "Burgers",
        "price": "₹400 for two",
        "offer": "15% OFF",
        "time": "20–25 MINS",
      },
    ];

    final List<Map<String, String>> categories = [
      {"label": "Specials", "image": "assets/images/shravan.jpeg"},
      {"label": "Burgers", "image": "assets/images/burger1.jpeg"},
      {"label": "Pizzas", "image": "assets/images/pizza.jpeg"},
      {"label": "Biryani", "image": "assets/images/biryani.jpeg"},
      {"label": "Chinese", "image": "assets/images/chinese.jpeg"},
      {"label": "Cakes", "image": "assets/images/cakes.jpeg"},
      {"label": "Paratha", "image": "assets/images/paratha.jpeg"},
      {"label": "Khichdi", "image": "assets/images/khichdi.jpeg"},
      {"label": "Shake", "image": "assets/images/shake.jpeg"},
    ];

    final List<Map<String, String>> moreOptions = [
      {"label": "Offer Zone", "image": "assets/images/offer_zone.jpg"},
      {
        "label": "High Protein\n30+ Grams",
        "image": "assets/images/high_protein.jpeg",
      },
      {"label": "Food on Train", "image": "assets/images/train_meal.jpg"},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.home, color: Colors.deepOrange, size: 28),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Hingne Colony Home Near Kamat Clinic...',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const CircleAvatar(
                      backgroundColor: Colors.black12,
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                  ],
                ),
              ),

              const SearchBarWithFilter(),
              const SizedBox(height: 10),

              // Banner 1
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Expires Today!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.deepOrange,
                            ),
                          ),
                          const SizedBox(height: 4),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text("ORDER NOW"),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/banner_slot.png",
                      width: 110,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Banner 2
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Fresh Meals On Train!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Enjoy the widest variety of menu across 100+ stations.',
                          ),
                          const SizedBox(height: 6),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text("ENTER PNR"),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/train_meal.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Filter Tabs
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "MIN Rs. 100 OFF",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "10 MINS DELIVERY",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Horizontal Food List
              SizedBox(
                height: 260,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16, bottom: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: foodItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: FoodCard(
                        food: foodItems[index],
                        item: foodItems[index],
                      ),
                    );
                  },
                ),
              ),
              // 🆕 Category Row (e.g. Shravan, Burgers, etc.)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "What's on your mind?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final item = categories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              item["image"]!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            item["label"]!,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // 🆕 More on Swiggy
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "More on Swiggy",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: moreOptions.map((option) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                option["image"]!,
                                width: 90,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              option["label"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 16),

              // Vertical Restaurant List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top ${restaurants.length} restaurants to explore",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                itemCount: restaurants.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  final res = restaurants[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                res["image"],
                                width: double.infinity,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: 8,
                                bottom: 8,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    res["offer"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                bottom: 8,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    res["time"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                res["name"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    "${res["rating"]} (${res["reviews"]}) • ${res["location"]}, ${res["distance"]}",
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "${res["cuisine"]} • ${res["price"]}",
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 1),
    );
  }
}
