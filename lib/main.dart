import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xffFD5D69)),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(6),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Color(0xffFFC6C9),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/svg/notification.svg"),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.all(6),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Color(0xffFFC6C9),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/svg/search.svg"),
          ),
          const SizedBox(
            width: 14,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(14),
          child: SvgPicture.asset(
            "assets/svg/vector.svg",
          ),
        ),
        backgroundColor: const Color(0xFF1C0F0D),
      ),
      backgroundColor: const Color(0xFF1C0F0D),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainCategoryItem(
                image: "assets/images/seafood.png", text: "Seafood"),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryItem(image: "assets/images/lunch.png", text: "Lunch"),
                CategoryItem(
                    image: "assets/images/breakfast.png", text: "Breakfast"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryItem(
                    image: "assets/images/dinner.png", text: "Dinner"),
                CategoryItem(image: "assets/images/vegan.png", text: "Vegan"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryItem(
                    image: "assets/images/dessert.png", text: "Dessert"),
                CategoryItem(
                  image: "assets/images/drinks.png",
                  text: "Drinks",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 280,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xffFD5D69),
                borderRadius: BorderRadius.circular(33),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset("assets/svg/home.svg"),
                  SvgPicture.asset("assets/svg/community.svg"),
                  SvgPicture.asset("assets/svg/categories.svg"),
                  SvgPicture.asset("assets/svg/profile.svg"),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 159,
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 6),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
