import 'package:my_portfolio/core/app_export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.3,
            decoration:
                BoxDecoration(color: AppColors.backgroundColor, boxShadow: [
              BoxShadow(
                color: AppColors.greenColor,
              )
            ]),
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
