import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/sections/portfolio/portfolio_desktop.dart';
import 'package:my_portfolio/sections/portfolio/portfolio_mobile.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
