import 'package:flutter/material.dart';

/// Layout for the central page content.
class LayoutContentContainer extends StatelessWidget {
  /// Creates a const instance of [LayoutContentContainer].
  const LayoutContentContainer({
    super.key,
    required this.child,
  });

  /// Content to show in the page.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ContentHeaderBar(),
        Expanded(
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}

/// Header with title and action button for the central content section.
class ContentHeaderBar extends StatelessWidget {
  /// Creates a const instance of [ContentHeaderBar].
  const ContentHeaderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAFAFA),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Campañas',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              foregroundColor: Colors.black,
              backgroundColor: Colors.orange.withOpacity(.7),
            ),
            child: const Text('Añadir'),
          ),
        ],
      ),
    );
  }
}
