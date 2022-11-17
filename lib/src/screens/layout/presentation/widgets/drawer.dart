import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widgets/menu.dart';
import 'package:flutter/material.dart';

/// Drawer widgets with the same elements that [LayoutMenu].
class LayoutDrawer extends StatelessWidget {
  /// Creates a const instance of [LayoutDrawer].
  const LayoutDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 65, 0, 15),
      child: Drawer(
        child: LayoutMenu(),
      ),
    );
  }
}
