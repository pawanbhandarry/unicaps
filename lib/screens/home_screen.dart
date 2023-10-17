import 'package:flutter/material.dart';
import 'package:unicaps/constants/pallete.dart';
import 'package:unicaps/widgets/tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;
  void _onTabChanged(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0:
        return const SizedBox();
      case 1:
        return const SizedBox();
      case 2:
        return const SizedBox();
      case 3:
        return const SizedBox();

      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Uni',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Pallete.blackColor,
                        letterSpacing: 2)),
                TextSpan(
                  text: 'Caps',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Pallete.primaryColor,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            const Divider(
              height: 1,
              color: Pallete.divider,
            ),
            TabBar(
              isScrollable: true,
              labelColor: Pallete.primaryColor,
              indicatorColor: Pallete.primaryColor,
              unselectedLabelStyle: TextStyle(),
              tabs: [
                Tab(
                  child: TabsContainer(
                    text: 'DEMO',
                    isSelected: _selectedTabIndex == 0,
                  ),
                ),
                Tab(
                  child: TabsContainer(
                    text: 'DEMO',
                    isSelected: _selectedTabIndex == 1,
                  ),
                ),
                Tab(
                  child: TabsContainer(
                    text: 'DEMO',
                    isSelected: _selectedTabIndex == 2,
                  ),
                ),
                Tab(
                  child: TabsContainer(
                    text: 'DEMO',
                    isSelected: _selectedTabIndex == 3,
                  ),
                ),
                Tab(
                  child: TabsContainer(
                    text: 'DEMO',
                    isSelected: _selectedTabIndex == 4,
                  ),
                ),
                Tab(
                  child: TabsContainer(
                    text: 'DEMO',
                    isSelected: _selectedTabIndex == 5,
                  ),
                ),
                Tab(
                  child: TabsContainer(
                    text: 'DEMO',
                    isSelected: _selectedTabIndex == 6,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
