import 'package:flutter/material.dart';
import 'package:nylo_support/widgets/ny_stateful_widget.dart';
import '../../app/controllers/task_controller.dart';
import 'package:nylo_support/widgets/ny_state.dart';

class TaskPage extends NyStatefulWidget {
  final TaskController controller = TaskController();

  TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends NyState<TaskPage> {
  @override
  widgetDidLoad() async {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(children: [
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Xin chào a"),
            CircleAvatar(),
          ]),
        )
      ]),
    ));
  }
}
