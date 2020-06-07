library underk_dynamic_widget;

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/widgets.dart';

class DefaultClickListener implements ClickListener {
  void onClicked(String event) {
    print(event);
  }
}

class UnderKDynamicWidget {
  BuildContext context;

  UnderKDynamicWidget(this.context);

  factory UnderKDynamicWidget.of(BuildContext context) {
    return UnderKDynamicWidget(context);
  }

  Widget build(String widgetJson) {
    return DynamicWidgetBuilder.build(
        widgetJson, context, new DefaultClickListener());
  }
}
