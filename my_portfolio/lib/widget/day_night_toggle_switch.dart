import 'package:flutter/material.dart';

class DayNightToggleSwitch extends StatefulWidget {
  final bool isDarkMode;
  final Function(bool) onChanged;
  final Color dayColor;
  final Color nightColor;
  final ImageProvider<Object> sunImage;
  final ImageProvider<Object> moonImage;
  final double imageSize;

  const DayNightToggleSwitch({
    super.key,
    required this.isDarkMode,
    required this.onChanged,
    required this.dayColor,
    required this.nightColor,
    required this.sunImage,
    required this.moonImage,
    this.imageSize = 40, // Default size for sun and moon images
  });

  @override
  _DayNightToggleSwitchState createState() => _DayNightToggleSwitchState();
}

class _DayNightToggleSwitchState extends State<DayNightToggleSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    if (widget.isDarkMode) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  void didUpdateWidget(covariant DayNightToggleSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isDarkMode) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.isDarkMode);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [
              widget.isDarkMode ? widget.nightColor : widget.dayColor,
              widget.isDarkMode
                  ? widget.nightColor.withOpacity(0.8)
                  : widget.dayColor.withOpacity(0.8),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: widget.isDarkMode ? 50 : 0,
              right: widget.isDarkMode ? 0 : 50,
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform.scale(
                    scale: 1.0 - _animationController.value,
                    child: Image(
                      image: widget.sunImage,
                      width: widget.imageSize,
                      height: widget.imageSize,
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: widget.isDarkMode ? 0 : 50,
              right: widget.isDarkMode ? 50 : 0,
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animationController.value,
                    child: Image(
                      image: widget.moonImage,
                      width: widget.imageSize,
                      height: widget.imageSize,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
