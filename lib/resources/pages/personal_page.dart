import 'package:flutter/material.dart';
import 'package:nylo_support/widgets/ny_stateful_widget.dart';
import '../../app/controllers/personal_controller.dart';
import 'package:nylo_support/widgets/ny_state.dart';

class PersonalPage extends NyStatefulWidget {
  final PersonalController controller = PersonalController();

  PersonalPage({Key? key}) : super(key: key);

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends NyState<PersonalPage> {
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
          "Personal Page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
