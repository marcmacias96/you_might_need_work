import 'package:flutter/material.dart';
import 'package:you_might_need_work/theme/app_padding.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  static const String routePath = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthPage'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppShadow(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'hintText',
                  ),
                ),
              ),
              const SizedBox(height: 12),
              AppShadow(
                child: DropdownButtonFormField<String>(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.small,
                    vertical: AppPadding.small,
                  ),
                  elevation: 4,
                  hint: const Text('hintText'),
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(12),
                  items: const [
                    DropdownMenuItem(
                      value: 'item1',
                      child: Text('item1'),
                    ),
                    DropdownMenuItem(
                      value: 'item2',
                      child: Text('item2'),
                    ),
                  ],
                  onChanged: (_) {},
                ),
              ),
              Checkbox(value: false, onChanged: (_) {}),
              const Chip(label: Text('Chip')),
              //test app_them colors and fonts
              Text(
                'displayLarge',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'displayMedium',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'displaySmall',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                'headlineMedium',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'headlineSmall',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'bodyLarge',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'bodyMedium',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'bodySmall',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'titleLarge',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'titleMedium',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'titleSmall',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              //test color primaty and secondary
              Container(
                width: 50,
                height: 50,
                color: Theme.of(context).colorScheme.primary,
              ),
              Container(
                width: 50,
                height: 50,
                color: Theme.of(context).colorScheme.secondary,
              ),
              ElevatedButton(
                onPressed: () {
                  showAdaptiveDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return const Dialog(
                        child: SizedBox(
                          width: 200,
                          height: 200,
                        ),
                      );
                    },
                  );
                },
                child: const Text('ElevatedButton'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                label: const Text(
                  'ElevatedButton.icon',
                ),
              ),
               SignInWithButton(
                iconPath: 'assets/images/google.png',
                onPressed: () {},
              ),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(
                  Icons.ac_unit,
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'OutlinedButton',
                ),
              ),

              FilledButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {},
                child: const Text(
                  'FilledButton',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
