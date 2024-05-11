import 'package:flutter/material.dart';

class DropdownWidget<T> extends StatefulWidget {
  const DropdownWidget({
    required this.initText,
    required this.values,
    required this.onPressed,
    super.key,
  });

  final String initText;
  final Map<String, T> values;
  final void Function(T value) onPressed;

  @override
  State<DropdownWidget<T>> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState<T> extends State<DropdownWidget<T>> {
  String dropdownValue = '';


  @override
  void initState() {
    dropdownValue = widget.initText;
    super.initState();
  }


  @override
  void didUpdateWidget(DropdownWidget<T> oldWidget) {
    dropdownValue = widget.initText;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => DropdownButton<String>(
    underline: Container(),
    // selectedItemBuilder: (ctx) => [for (final _ in widget.values.entries) _buildItem(dropdownValue)],
    value: dropdownValue,
    items: widget.values.entries.map((e) => _buildItem(e.key)).toList(),
    isExpanded: true,
    onChanged: (value) {
      widget.onPressed(widget.values[value!] as T);
      setState(() {
        dropdownValue = value;
      });
    },
  );

  DropdownMenuItem<String> _buildItem(String buttonText) => DropdownMenuItem<String>(
    value: buttonText,
    child: _buildTextItem(buttonText),
  );

  Text _buildTextItem(String text) => Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
      overflow: TextOverflow.ellipsis,
  );
}