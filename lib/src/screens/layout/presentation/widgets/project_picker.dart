import 'package:flutter/material.dart';

enum SimpleValue {
  one,
  two,
  three,
}

class ProjectPicker extends StatelessWidget {
  const ProjectPicker();

  @override
  Widget build(BuildContext context) {
    String simpleValueToString(BuildContext context, SimpleValue value) {
      // final localizations = GalleryLocalizations.of(context)!;
      return {
        SimpleValue.one: 'dart.dev',
        SimpleValue.two: 'demoMenuItemValueTwo',
        SimpleValue.three: 'demoMenuItemValueThree',
      }[value]!;
    }

    return PopupMenuButton<SimpleValue>(
      padding: EdgeInsets.zero,
      initialValue: SimpleValue.two, // _simpleValue,
      onSelected: (value) {
        // showAndSetMenuSelection(context, value);
        // print(value);
      },
      offset: const Offset(0, 105),
      itemBuilder: (context) => [
        PopupMenuItem<SimpleValue>(
          value: SimpleValue.one,
          child: Text(
            simpleValueToString(
              context,
              SimpleValue.one,
            ),
          ),
        ),
        PopupMenuItem<SimpleValue>(
          value: SimpleValue.two,
          child: Text(
            simpleValueToString(
              context,
              SimpleValue.two,
            ),
          ),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem<SimpleValue>(
          value: SimpleValue.three,
          child: Text('New project'),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            const _ProjectLogo(),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dart',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'dart.dev',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            const Icon(Icons.keyboard_arrow_down_rounded, size: 19),
          ],
        ),
      ),
    );
  }
}

/// Website favicon as project logo
class _ProjectLogo extends StatelessWidget {
  const _ProjectLogo();

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.lightbulb_circle_outlined, size: 27);
  }
}
