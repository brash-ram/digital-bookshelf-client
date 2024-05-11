import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {

  const TextFieldWidget({
    this.autocorrect = true,
    this.inputFormatters,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.initText,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength = 255,
    this.enabled = true,
    this.decoration,
    super.key,
  });

  final bool autocorrect;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final String? initText;
  final bool enabled;
  final int maxLines;
  final int minLines;
  final int? maxLength;
  final InputDecoration? decoration;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late TextEditingController controller = TextEditingController();

  late bool obscureText = widget.obscureText;

  @override
  void initState() {
    super.initState();
    if (widget.initText != null) {
      controller.text = widget.initText!;
    }
  }

  @override
  void dispose() {
    controller
      .dispose();
    super.dispose();
  }


  @override
  void didUpdateWidget(TextFieldWidget oldWidget) {
    if (widget.initText != null) {
      controller.text = widget.initText!;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => TextFormField(
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      enabled: widget.enabled,
      maxLength: widget.maxLength,
      autocorrect: widget.autocorrect,
      controller: controller,
      decoration: widget.decoration ?? InputDecoration(
        suffixIcon: widget.obscureText
            ? IntrinsicWidth(
                child: _buildShowObscureTextButton(),
              )
            : widget.suffixIcon,
        labelText: widget.labelText,
        hintStyle: Theme.of(context).textTheme.bodyLarge,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        counterStyle: const TextStyle(height: double.minPositive,),
        counterText: '',
      ),
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      obscureText: obscureText,
      onChanged: widget.onChanged,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.normal,
          ),
      validator: widget.validator,
    );

  Widget _buildShowObscureTextButton() => IconButton(
    onPressed: () => setState(
      () => obscureText = !obscureText,
    ),
    padding: EdgeInsets.zero,
    icon: Icon(
      obscureText ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
      color: Colors.black,
    ),
  );
}
