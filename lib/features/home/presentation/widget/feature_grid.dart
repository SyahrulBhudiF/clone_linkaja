import 'package:clone_linkaja/features/home/presentation/domain/models/feature_item.dart';
import 'package:flutter/material.dart';

class FeatureGrid extends StatelessWidget {
  FeatureGrid({super.key});

  final List<FeatureItem> features = [
    FeatureItem(icon: Icons.phone_android, label: 'Pulsa/Data'),
    FeatureItem(icon: Icons.flash_on, label: 'Electricity'),
    FeatureItem(icon: Icons.tv, label: 'Cable TV & Internet'),
    FeatureItem(icon: Icons.credit_card, label: 'Kartu Uang Elektronik'),
    FeatureItem(icon: Icons.church, label: 'Gereja'),
    FeatureItem(icon: Icons.info, label: 'Infaq'),
    FeatureItem(icon: Icons.favorite, label: 'Other Donations'),
    FeatureItem(icon: Icons.more_horiz, label: 'More'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      itemCount: features.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(features[index].icon, color: Theme.of(context).primaryColor),
            SizedBox(height: 4),
            Text(features[index].label,
                style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
          ],
        );
      },
    );
  }
}
