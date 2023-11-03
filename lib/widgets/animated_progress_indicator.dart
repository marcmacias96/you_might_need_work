// ignore_for_file: public_member_api_docs, prefer_asserts_with_message

import 'package:flutter/material.dart';
import 'package:you_might_need_work/theme/app_colors.dart';

class AnimatedLinearProgressIndicator extends StatefulWidget {
  const AnimatedLinearProgressIndicator({
    required this.value,
    super.key,
    this.duration = const Duration(milliseconds: 150),
  })  : assert(value >= 0),
        assert(value <= 1);

  final Duration duration;
  final double value;

  @override
  State<AnimatedLinearProgressIndicator> createState() =>
      _AnimatedLinearProgressIndicatorState();
}

class _AnimatedLinearProgressIndicatorState
    extends State<AnimatedLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _value;

  @override
  void initState() {
    _updateController();
    _updateValueAnimation(
      begin: 0,
      end: widget.value,
    );
    _controller.forward();
    super.initState();
  }

  @override
  void didUpdateWidget(
    covariant AnimatedLinearProgressIndicator oldWidget,
  ) {
    final durationUpdated = widget.duration != oldWidget.duration;
    if (durationUpdated) {
      _controller.dispose();
      _updateController();
    }
    final valueUpdated = widget.value != oldWidget.value;
    if (durationUpdated || valueUpdated) {
      _updateValueAnimation(
        begin: oldWidget.value,
        end: widget.value,
      );
      _controller
        ..reset()
        ..forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _updateController() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
  }

  void _updateValueAnimation({
    required double begin,
    required double end,
  }) {
    _value = Tween<double>(
      begin: begin,
      end: end,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: begin > end ? Curves.easeIn : Curves.easeOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return AnimatedBuilder(
      key: widget.key,
      animation: _controller,
      builder: (_, __) {
        return LinearProgressIndicator(
          value: _value.value,
          color: AppColors.primary2,
          minHeight: 8,
          borderRadius: BorderRadius.circular(8),
        );
      },
    );
  }
}
