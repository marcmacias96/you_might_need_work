import 'package:flutter/material.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class StepperIndicator extends StatelessWidget {
  const StepperIndicator({
    required this.actualStep,
    required this.totalSteps,
    super.key,
  });

  final int actualStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: actualStep != totalSteps,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.xl,
          vertical: AppPadding.medium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You Might Need Work',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppPadding.large),
            Row(
              children: [
                Expanded(
                  child: AnimatedLinearProgressIndicator(
                    value: actualStep / totalSteps,
                  ),
                ),
                const SizedBox(width: AppPadding.large),
                Text('Steps $actualStep/$totalSteps'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
