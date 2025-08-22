/// 自动全屏
import 'package:pikapika/i18.dart';
import 'package:flutter/material.dart';

import '../Common.dart';
import '../Method.dart';
import 'IsPro.dart';

const _propertyName = "exportRename";
late bool _exportRename;

Future<void> initExportRename() async {
  _exportRename = (await method.loadProperty(_propertyName, "false")) == "true";
}

bool currentExportRename() {
  return _exportRename;
}

Widget exportRenameSetting() {
  return StatefulBuilder(
    builder: (BuildContext context, void Function(void Function()) setState) {
      return SwitchListTile(
        title: Text(tr("settings.export_rename.title")),
        value: _exportRename,
        onChanged: (value) async {
          if (!isPro) {
            defaultToast(context, tr("app.pro_required"));
            return;
          } 
          await method.saveProperty(_propertyName, "$value");
          _exportRename = value;
          setState(() {});
        },
      );
    },
  );
}
