import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travella/features/home/view/widget/category_widget.dart';
import 'package:travella/features/home/view/widget/city_widget.dart';
import 'package:travella/features/home/view/widget/place_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/icon/hamburger.svg',
              height: 24,
              width: 24,
            ),
            const Text(
              'Home',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: Image.asset(
                'assets/images/profile.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.account_circle, size: 40),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // ── Page Content ───────────────────────────────────────
          SafeArea(
            child: _selectedIndex == 0
                ? _buildHomeBody()
                : _buildPlaceholderPage(_selectedIndex),
          ),

          // ── Floating Bottom Nav ────────────────────────────────
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _navItem(icon: Icons.home_outlined, activeIcon: Icons.home, index: 0, label: 'Home'),
                  _navItem(icon: Icons.search_outlined, activeIcon: Icons.search, index: 1, label: 'Search'),
                  _navItem(icon: Icons.bookmark_border, activeIcon: Icons.bookmark, index: 2, label: 'Saved'),
                  _navItem(icon: Icons.person_outline, activeIcon: Icons.person, index: 3, label: 'Profile'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navItem({
    required IconData icon,
    required IconData activeIcon,
    required int index,
    required String label,
  }) {
    final isActive = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? Colors.blue.withOpacity(0.12) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              isActive ? activeIcon : icon,
              color: isActive ? Colors.blue : Colors.white,
              size: 24,
            ),
            if (isActive) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildHomeBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),

          // ── Hero Text ──────────────────────────────────────────
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wonderful Indonesia',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Let\'s Explore Together',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // ── Categories ─────────────────────────────────────────
          const CategoryWidget(),

          const SizedBox(height: 24),

          // ── City List (horizontal scroll) ──────────────────────
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                4,
                    (index) => const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: CityWidget(),
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),

          // ── Top Places Header ──────────────────────────────────
          Row(
            children: [
              const Text(
                'Top Places',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // ── Place List ─────────────────────────────────────────
          ...List.generate(
            2,
                (index) => const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: PlaceWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholderPage(int index) {
    const tabs = ['Search', 'Saved', 'Profile'];
    const icons = [Icons.search, Icons.bookmark, Icons.person];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icons[index - 1], size: 72, color: Colors.blue),
          const SizedBox(height: 16),
          Text(
            tabs[index - 1],
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}