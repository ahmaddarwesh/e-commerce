import 'package:flutter/material.dart';

import 'custom_text.dart';

class CAppBar extends AppBar {
  CAppBar({Key? key, required String title})
      : super(
          key: key,
          centerTitle: true,
          title: CText(text: title),
        );

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
