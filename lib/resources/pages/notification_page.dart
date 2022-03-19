import 'package:flutter/material.dart';
import 'package:nylo_support/widgets/ny_stateful_widget.dart';
import '../../app/controllers/notification_controller.dart';
import 'package:nylo_support/widgets/ny_state.dart';

class NotificationPage extends NyStatefulWidget {
  final NotificationController controller = NotificationController();

  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends NyState<NotificationPage> {
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
          "Notification Page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
