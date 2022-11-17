import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widgets/project_picker.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Custom layout AppBar with logo, hamburger menu icon and account icon.
class LayoutAppBar extends StatelessWidget with PreferredSizeWidget {
  /// Creates an const instance of [LayoutAppBar].
  const LayoutAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          ResponsiveVisibility(
            hiddenWhen: const [Condition.largerThan(name: 'MOBILE_LARGE')],
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            ),
          ),
          const ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: 'MOBILE_LARGE')],
            child: SizedBox(
              width: 283,
              height: 49,
              child: ProjectPicker(),
            ),
          ),
          const Expanded(child: SizedBox()),
          const SizedBox(
            width: 46,
            height: 49,
            child: _NotificationPicker(),
          ),
          const SizedBox(
            width: 80,
            height: 49,
            child: _AccountMenu(),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

///
enum NotificationValue {
  ///
  one,

  ///
  two,

  ///
  three,
}

class _NotificationPicker extends StatelessWidget {
  const _NotificationPicker();

  @override
  Widget build(BuildContext context) {
    String simpleValueToString(BuildContext context, NotificationValue value) {
      // final localizations = GalleryLocalizations.of(context)!;
      return {
        NotificationValue.one: 'Notification 1',
        NotificationValue.two: 'Notification 2',
        NotificationValue.three: 'Notification 3',
      }[value]!;
    }

    return PopupMenuButton<NotificationValue>(
      padding: EdgeInsets.zero,
      initialValue: NotificationValue.two, // _simpleValue,
      onSelected: (value) {
        // showAndSetMenuSelection(context, value);
        // print(value);
      },
      offset: const Offset(0, 105),
      itemBuilder: (context) => [
        PopupMenuItem<NotificationValue>(
          value: NotificationValue.one,
          child: Text(
            simpleValueToString(
              context,
              NotificationValue.one,
            ),
          ),
        ),
        PopupMenuItem<NotificationValue>(
          value: NotificationValue.two,
          child: Text(
            simpleValueToString(
              context,
              NotificationValue.two,
            ),
          ),
        ),
        // const PopupMenuDivider(),
        const PopupMenuItem<NotificationValue>(
          value: NotificationValue.three,
          child: Text('New project'),
        ),
      ],
      child: const Icon(Icons.notifications, size: 21),
    );
  }
}

///
enum AccountValue {
  ///
  one,
}

class _AccountMenu extends StatelessWidget {
  const _AccountMenu();

  @override
  Widget build(BuildContext context) {
    String simpleValueToString(BuildContext context, AccountValue value) {
      return {
        AccountValue.one: 'Cerrar sesión',
      }[value]!;
    }

    return PopupMenuButton<AccountValue>(
      padding: EdgeInsets.zero,
      initialValue: AccountValue.one, // _simpleValue,
      onSelected: (value) {
        if (value == AccountValue.one) {
          // Get.toNamed<dynamic>(Routes.LOGIN);
        }
        // showAndSetMenuSelection(context, value);
        // print(value);
      },
      offset: const Offset(0, 55),
      itemBuilder: (context) => [
        PopupMenuItem<AccountValue>(
          value: AccountValue.one,
          child: Text(
            simpleValueToString(
              context,
              AccountValue.one,
            ),
          ),
        ),
      ],
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.account_circle_sharp, size: 27),
            SizedBox(width: 3),
            Icon(Icons.keyboard_arrow_down_rounded, size: 19),
          ],
        ),
      ),
    );
  }
}
