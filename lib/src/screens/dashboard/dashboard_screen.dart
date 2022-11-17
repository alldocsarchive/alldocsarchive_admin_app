import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widget/layout.dart';
import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widgets/app_bar.dart';
import 'package:alldocsarchive_admin_app/src/screens/layout/presentation/widgets/drawer.dart';
import 'package:flutter/material.dart';

/// Root Screen
class DashboardScreen extends StatelessWidget {
  /// Root Screen
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LayoutAppBar(),
      drawer: LayoutDrawer(),
      body: Layout(
        child: CampaignListView(),
      ),
    );
  }
}

/// [ListView] of campaigns for [CampaignsPage].
class CampaignListView extends StatelessWidget {
  /// Creates a const instance of [CampaignListView].
  const CampaignListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 8,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        return CampaignListTile(
          key: Key(index.toString()),
          label: 'Campaña $index',
        );
      },
    );
  }
}

/// Custom ListTile to be used in [CampaignListView].
class CampaignListTile extends StatelessWidget {
  /// Creates a const instance of [CampaignListTile].
  const CampaignListTile({
    super.key,
    required this.label,
  });

  /// Text to show in the campaign list item.
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        foregroundColor: Colors.black,
      ),
      child: Row(
        children: [
          const Icon(Icons.arrow_right),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 4),
                Text(
                  'Algo de información extra',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
