import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CaptionWidget extends StatefulWidget {
  const CaptionWidget({
    required this.index,
    required this.onVisibilityChanged,
    super.key,
  });
  final int index;
  final void Function(VisibilityInfo) onVisibilityChanged;
  @override
  State<CaptionWidget> createState() => _CaptionWidgetState();
}

class _CaptionWidgetState extends State<CaptionWidget> {
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      onVisibilityChanged: widget.onVisibilityChanged,
      key: Key('caption-widget-${widget.index}'),
      child: DecoratedBox(
          decoration: BoxDecoration(
            color: generateColorFromIndex(widget.index),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Caption ${widget.index}',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          )),
    );
  }
}

Color generateColorFromIndex(int index) {
  final r = (index * 123) % 255;
  final g = (index * 456) % 255;
  final b = (index * 789) % 255;
  return Color.fromARGB(255, r, g, b);
}
