import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widgets/content_container.dart';
import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Responsive app layout wity AppBar and Menu.
class Layout extends StatelessWidget {
  /// Creates a const instance of the layout.
  const Layout({
    super.key,
    required this.child,
  });

  /// Layout content, positioned to the right of the menu and below the AppBar.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: 'MOBILE_LARGE')],
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: LayoutMenu(),
            ),
          ),
          Expanded(
            child: LayoutContentContainer(child: child),
          ),
        ],
      ),
    );
  }
}
