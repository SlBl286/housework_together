import 'package:flutter/material.dart';
import 'package:housework_together/app/controllers/home_controller.dart';
import 'package:housework_together/bootstrap/helpers.dart';
import 'package:housework_together/resources/pages/notification_page.dart';
import 'package:housework_together/resources/pages/personal_page.dart';
import 'package:housework_together/resources/pages/shopping_list_page.dart';
import 'package:housework_together/resources/pages/task_page.dart';
import 'package:housework_together/resources/widgets/bottom_nav_bar_widget.dart';
import 'package:housework_together/resources/widgets/safearea_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:nylo_framework/theme/helper/ny_theme.dart';

class HomePage extends NyStatefulWidget {
  final HomeController controller = HomeController();

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends NyState<HomePage> with TickerProviderStateMixin {
  bool _darkMode = false;
  int _index = 1;
  late AnimationController animationController;
  List<Widget> listPage = [
    TaskPage(),
    ShoppingListPage(),
    NotificationPage(),
    PersonalPage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  widgetDidLoad() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onPanUpdate: ((details) {
            // Swiping in right direction.
            if (details.delta.dx > 0 && _index > 1) {
              setState(() {
                _index -= 1;
              });
            }

            // Swiping in left direction.
            if (details.delta.dx < 0 && _index < 4) {
              setState(() {
                _index += 1;
              });
            }
            print(details.delta.dx > 0);
          }),
          child: listPage[_index - 1]),
      bottomNavigationBar: BottomNavBarWidget(
        startIndex: 1,
        onIndexChange: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavBarItem(index: 1, icon: Icons.add_task_outlined),
          BottomNavBarItem(index: 2, icon: Icons.list_rounded),
          BottomNavBarItem(index: 3, icon: Icons.notifications_rounded),
          BottomNavBarItem(index: 4, icon: Icons.person_outline_rounded),
        ],
      ),
    );
  }
}
