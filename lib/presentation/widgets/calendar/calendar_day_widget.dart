import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/core/constants/app_dimensions.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';

class CalendarDayWidget extends StatelessWidget {
  const CalendarDayWidget({
    super.key,
    required this.date,
    this.isSelected = false,
    this.isToday = false,
    this.isInRange = false,
    this.isRangeStart = false,
    this.isRangeEnd = false,
    this.hasEvents = false,
    this.isOutsideMonth = false,
    this.onTap,
  });

  final DateTime date;
  final bool isSelected;
  final bool isToday;
  final bool isInRange;
  final bool isRangeStart;
  final bool isRangeEnd;
  final bool hasEvents;
  final bool isOutsideMonth;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppDimensions.calendarDaySize,
        height: AppDimensions.calendarDaySize,
        margin: const EdgeInsets.all(AppDimensions.spacing2),
        padding: const EdgeInsets.all(AppDimensions.calendarDayPadding),
        decoration: _buildDecoration(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${date.day}', style: _buildTextStyle(context)),
            if (hasEvents)
              Container(
                width: AppDimensions.spacing4,
                height: AppDimensions.spacing4,
                margin: const EdgeInsets.only(top: AppDimensions.spacing2),
                decoration: BoxDecoration(
                  color: _getEventIndicatorColor(context),
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration(BuildContext context) {
    final colorScheme = context.colorScheme;

    // Одиончный выбор
    if (isSelected && !isRangeStart && !isRangeEnd) {
      return BoxDecoration(color: colorScheme.primary, shape: BoxShape.circle);
    }

    // Начало диапазона времени
    if (isRangeStart) {
      return BoxDecoration(color: colorScheme.primary, shape: BoxShape.circle);
    }

    // Конец диапазона времени
    if (isRangeEnd) {
      return BoxDecoration(color: colorScheme.primary, shape: BoxShape.circle);
    }

    // Полоса диапазона
    if (isInRange) {
      return BoxDecoration(
        color: colorScheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      );
    }

    // Сегодняяшнее число
    if (isToday) {
      return BoxDecoration(
        border: Border.all(color: colorScheme.primary, width: 2),
        shape: BoxShape.circle,
      );
    }

    return const BoxDecoration();
  }

  TextStyle? _buildTextStyle(BuildContext context) {
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;

    // Выбранная дата или начало иликонец диапазона
    if (isSelected || isRangeStart || isRangeEnd) {
      return textTheme.bodyMedium?.copyWith(
        color: colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
    }

    // За пределами месяца которое мы не видим
    if (isOutsideMonth) {
      return textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface.withOpacity(0.3),
      );
    }

    // В диапазоне
    if (isInRange) {
      return textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w500,
      );
    }

    // Сегодня
    if (isToday) {
      return textTheme.bodyMedium?.copyWith(
        color: colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
    }

    return textTheme.bodyMedium;
  }

  Color _getEventIndicatorColor(BuildContext context) {
    final colorScheme = context.colorScheme;

    if (isSelected || isRangeStart || isRangeEnd) {
      return colorScheme.onPrimary;
    }

    return colorScheme.primary;
  }
}
