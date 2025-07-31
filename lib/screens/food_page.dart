import 'package:flutter/material.dart';
import 'home_page.dart';
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

    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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

              // Expires Today Banner
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
                    Image.asset("assets/images/banner_slot.png",  width: 110, height: 50, fit: BoxFit.cover),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Meals on Train Banner
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
                    Image.asset("assets/images/train_meal.jpg", width: 100, height: 100, fit: BoxFit.cover),
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
                        item: foodItems[index], // remove this line if your FoodCard doesn’t require 'item'
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
