import 'package:zomato_clone/export.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      _selectedIndex,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );
    print('Current Index : $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.SPLASH_GRADIENT_1,
        type: BottomNavigationBarType.fixed,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: _selectedIndex == 0
                  ? MyColors.SPLASH_GRADIENT_1
                  : Colors.black45,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.toll,
              color: _selectedIndex == 1
                  ? MyColors.SPLASH_GRADIENT_1
                  : Colors.black45,
            ),
            label: 'Go Out',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payments,
              color: _selectedIndex == 2
                  ? MyColors.SPLASH_GRADIENT_1
                  : Colors.black45,
            ),
            label: 'Pro',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.volunteer_activism,
              color: _selectedIndex == 3
                  ? MyColors.SPLASH_GRADIENT_1
                  : Colors.black45,
            ),
            label: 'Donate',
          ),
        ],
        currentIndex: _selectedIndex,
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomeTab(),
          GoOutTab(),
          ProTab(),
          DonateTab(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
}
