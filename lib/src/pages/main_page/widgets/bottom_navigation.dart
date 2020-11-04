import 'package:flutter/material.dart';

enum TabItem { conversion, info }

Map<TabItem, String> tabName = {
  TabItem.conversion: "Conversion",
  TabItem.info: "Info"
};

Map<TabItem, IconData> tabIcon = {
  TabItem.conversion: Icons.home,
  TabItem.info: Icons.info
};

Map<TabItem, int> tabIndex = {
  TabItem.conversion: 0,
  TabItem.info: 1
};

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({this.currentTab, this.onSelectTab});

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: const Border(
          top: BorderSide( //                    <--- top side
            color: Colors.white54,
            width: 0.4,
          ),
        ),
      ),
      margin: const EdgeInsets.all(0),
      height: 64,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabIndex[currentTab],
          items: [
            _buildItem(context, tabItem: TabItem.conversion),
            _buildItem(context, tabItem: TabItem.info),
          ],
          onTap: (index) => onSelectTab(
            TabItem.values[index],
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          elevation: 0,
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(BuildContext context, {TabItem tabItem}) {
    final String text = tabName[tabItem];
    final IconData icon = tabIcon[tabItem];
    
    return BottomNavigationBarItem(
      icon: Icon(
        icon
      ),
      label: text
    );
  }
}