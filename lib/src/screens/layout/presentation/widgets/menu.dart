import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widgets/project_picker.dart';
import 'package:alldocsarchive_admin_app/src/screens/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Left sidebar or drawer app menu.
class LayoutMenu extends StatelessWidget {
  /// Creates a const instance of [LayoutMenu].
  const LayoutMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: ListView(
        children: [
          const ResponsiveVisibility(
            hiddenWhen: [Condition.largerThan(name: 'MOBILE_LARGE')],
            child: SizedBox(
              width: 250,
              height: 49,
              child: ProjectPicker(),
            ),
          ),
          MenuItem(
            icon: Icons.campaign,
            label: 'Campañas',
            active: true,
            onPressed: () => context.go(DashboardRoutes.route.path),
          ),
          MenuItem(
            icon: Icons.topic,
            label: 'Tópicos',
            onPressed: () => context.go(DashboardRoutes.route.path),
          ),
        ],
      ),
    );
  }
}

/// Menu item widget to be used in [LayoutMenu].
class MenuItem extends StatelessWidget {
  /// Creates a const instance of [MenuItem].
  const MenuItem({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.active = false,
  });

  /// Text to show in the menu item.
  final String label;

  /// Icon to show in the menu item, as [IconData].
  final IconData icon;

  /// Function to run on pressed.
  final VoidCallback onPressed;

  /// If this is the current active menu item.
  final bool active;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: active ? Colors.orange : Colors.transparent,
            width: 3,
          ),
        ),
      ),
      child: TextButton(
        onPressed: () {
          if (Scaffold.of(context).isDrawerOpen) {
            Navigator.of(context).pop();
          }
          onPressed();
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: Colors.black,
          backgroundColor:
              active ? const Color(0xFFFAFAFA) : Colors.transparent,
          shape: const BeveledRectangleBorder(),
        ),
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              VerticalDivider(
                color: active ? Colors.orange : Colors.transparent,
                width: 3,
                thickness: 3,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(icon, size: 23),
                      const SizedBox(width: 10),
                      Expanded(child: Text(label)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
