import 'package:flutter/material.dart';

class SegmentationButtons<T> extends StatefulWidget {
  const SegmentationButtons({
    required this.onChange,
    required this.initValue,
    required this.buttonValues,
    super.key,
    this.multiSelectionEnabled = false,
  });
  final void Function(Set<T> values) onChange;
  final T initValue;
  final List<(T, String)> buttonValues;
  final bool multiSelectionEnabled;

  @override
  State<SegmentationButtons<T>> createState() => _SegmentationButtonsState<T>();
}

class _SegmentationButtonsState<T> extends State<SegmentationButtons<T>> {
  Set<T> _segmentation = {};

  @override
  void initState() {
    super.initState();
    _segmentation.add(widget.initValue);
  }

  @override
  Widget build(BuildContext context) => SegmentedButton<T>(
      multiSelectionEnabled: false,
      emptySelectionAllowed: false,
      showSelectedIcon: false,
      selected: _segmentation,
      onSelectionChanged: (newSelection) {
        widget.onChange(newSelection);
        setState(() {
          _segmentation = newSelection;
        });
      },
      segments: widget.buttonValues
        .map<ButtonSegment<T>>((e) => ButtonSegment<T>(
          value: e.$1,
          label: Center(
            child: Text(
              e.$2,
              // style: theme.textTheme.bodyMedium?.copyWith(
              //   // color: _segmentation.contains(e.$1) ? theme.colorScheme.onPrimary : Colors.black,
              // ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
        .toList(),
    );
}
