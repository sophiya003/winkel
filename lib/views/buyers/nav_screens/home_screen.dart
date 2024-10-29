import 'package:flutter/material.dart';
import 'package:winkel/views/buyers/nav_screens/widgets/banner_widgets.dart';
import 'package:winkel/views/buyers/nav_screens/widgets/cateogory_text.dart';
import 'package:winkel/views/buyers/nav_screens/widgets/search_input_widget.dart';
import 'package:winkel/views/buyers/nav_screens/widgets/welcome_text_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeText(),
        SizedBox(
          height: 14,
        ),
        SearchInputWidget(),
        BannerWidget(),
        CateogoryText()
      ],
    );
  }
}
