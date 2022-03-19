import 'package:flutter/material.dart';
import 'package:nylo_support/widgets/ny_stateful_widget.dart';
import '../../app/controllers/shopping_list_controller.dart';
import 'package:nylo_support/widgets/ny_state.dart';

class ShoppingListPage extends NyStatefulWidget {
  final ShoppingListController controller = ShoppingListController();

  ShoppingListPage({Key? key}) : super(key: key);

  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends NyState<ShoppingListPage> {
  @override
  widgetDidLoad() async {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          "Shopping list Page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
