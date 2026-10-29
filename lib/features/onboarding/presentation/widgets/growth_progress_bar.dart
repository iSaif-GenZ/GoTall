import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class GrowthProgressBar extends StatefulWidget {
  const GrowthProgressBar({super.key});

  @override
  State<GrowthProgressBar> createState() => _GrowthProgressBarState();
}

class _GrowthProgressBarState extends State<GrowthProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isFirstCycle = true;
  late final VoidCallback _listener;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();

    _listener = () {
      if (_isFirstCycle && _controller.value > 0.95) {
        setState(() {
          _isFirstCycle = false;
        });
        _controller.removeListener(_listener);
      }
    };
    _controller.addListener(_listener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double totalWidth = 120;
    const double indicatorWidth = 48; // عرض الجزء الفيروزي المتحرك

    return Container(
      width: totalWidth,
      height: 4,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.deepRoyalBlue.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(2),
      ),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final double startPosition = -indicatorWidth;
          final double endPosition = totalWidth;

          final double currentPosition =
              startPosition +
              (_controller.value * (endPosition - startPosition));

          final bool isVisible = !_isFirstCycle || (currentPosition >= 24);

          if (!isVisible) {
            return const SizedBox.shrink();
          }

          return Stack(
            children: [
              Positioned(
                left: currentPosition,
                top: 0,
                bottom: 0,
                width: indicatorWidth,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryTurquoise,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
