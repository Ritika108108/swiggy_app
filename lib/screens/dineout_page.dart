import 'package:flutter/material.dart';

class DineoutPage extends StatelessWidget {
  const DineoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Location Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.orange),
                    const SizedBox(width: 6),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Savitri Hostel',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Sinhagad Institute Of Technolo...',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/buy_one.png', height: 36),
                    const SizedBox(width: 8),
                    const CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: Icon(Icons.person, color: Colors.white),
                    )
                  ],
                ),
              ),

              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for malls & landmarks',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Explore Dineout",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // Grid Layout
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.8,
                  children: [
                    gridItem("assets/images/cafe.jpg", "Cafes"),
                    gridItem("assets/images/buffet.jpg", "Buffets"),
                    gridItem("assets/images/rooftop.jpg", "Rooftop"),
                    gridItem("assets/images/luxury.jpg", "Luxury"),
                    gridItem("assets/images/pubs.jpg", "Pubs"),
                    gridItem("assets/images/family.jpg", "Family"),
                    gridItem("assets/images/pureveg.jpg", "Pure Veg"),
                    gridItem("assets/images/newlyopened.jpg", "Newly Opened"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget gridItem(String imgPath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade100,
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
