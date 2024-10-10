import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/sections/contact/contact_desktop.dart';
import 'package:my_portfolio/sections/contact/contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
