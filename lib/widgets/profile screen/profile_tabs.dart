import 'package:flutter/material.dart';

class ProfileTabs extends StatefulWidget {
  const ProfileTabs({super.key});

  @override
  State<ProfileTabs> createState() => _ProfileTabsState();
}

class _ProfileTabsState extends State<ProfileTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            
            tabs: [
              Tab(icon: Icon(Icons.grid_on_sharp)),
              Tab(icon: Icon(Icons.repeat_sharp)),
              Tab(icon: Icon(Icons.account_box_outlined)),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Text('data')),
                Center(child: Text('data')),
                Center(child: Text('data')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
