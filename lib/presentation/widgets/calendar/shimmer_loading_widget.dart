import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/core/constants/app_dimensions.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.theme.shadowColor,
      highlightColor: context.theme.shadowColor,
      child: Column(
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: AppDimensions.spacing12),
            child: Container(
              height: AppDimensions.shimmerCardHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.theme.cardColor,
                borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
