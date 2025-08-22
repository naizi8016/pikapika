import 'package:pikapika/i18.dart';
import 'package:event/event.dart';
import 'package:flutter/material.dart';
import '../Method.dart';

const _propertyName = "hiddenViewed";

late bool _hiddenViewed;

bool get hiddenViewed => _hiddenViewed;

var hiddenViewedEvent = Event<EventArgs>();

Future initHiddenViewed() async {
  _hiddenViewed =
      (await method.loadProperty(_propertyName, "false")) == "true";
}

Widget hiddenViewedSetting() {
  return StatefulBuilder(
    builder: (BuildContext context, void Function(void Function()) setState) {
      return SwitchListTile(
        title: Text(tr("settings.hidden_viewed.title")),
        value: _hiddenViewed,
        onChanged: (value) async {
          await method.saveProperty(_propertyName, "$value");
          _hiddenViewed = value;
          setState(() {});
          hiddenViewedEvent.broadcast();
          await method.removeAllSubscribed();
        },
      );
    },
  );
}
