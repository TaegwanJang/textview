import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:textview/ui/icon_assets.dart';
import 'package:textview/ui/textview.dart';

enum CustomTextInputFieldType { normal, password, search, price }

class CustomTextInputField extends StatefulWidget {
  final GlobalKey<FormState>? formKey;
  final String? label;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FormFieldSetter? onSaved;
  final FormFieldValidator? validator;
  final Function(String)? onChanged;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final bool showSuffix;
  final Widget? suffix;
  final Function()? onSuffixTap;
  final bool? readOnly;
  final bool? enabled;
  final TextInputType? keyboardType;
  final CustomTextInputFieldType inputFieldType;
  final bool autoFocus;
  final TextInputAction? textInputAction;
  final bool includeErrorPadding;
  final Widget? prefix;
  final VoidCallback? onPressed;
  final Function(String)? onFieldSubmitted;
  final int minLines;
  final int maxLines;
  final bool showSuffixAlways;
  final double? radius;
  final TextAlign textAlign;
  final bool showError;
  final List<TextInputFormatter>? inputFormatter;

  const CustomTextInputField._({
    Key? key,
    this.formKey,
    this.label,
    this.controller,
    this.focusNode,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.showSuffix = true,
    this.suffix,
    this.onSuffixTap,
    this.readOnly,
    this.enabled,
    this.keyboardType,
    required this.inputFieldType,
    this.autoFocus = false,
    this.textInputAction,
    this.includeErrorPadding = false,
    this.prefix,
    this.onPressed,
    this.onFieldSubmitted,
    this.minLines = 1,
    this.maxLines = 1,
    this.showSuffixAlways = false,
    this.radius,
    this.textAlign = TextAlign.start,
    this.showError = true,
    this.inputFormatter,
  })  : assert(
          validator == null || (validator != null && formKey != null),
          'validator needs formKey, formKey should not be null!',
        ),
        super(key: key);

  factory CustomTextInputField.price({
    final GlobalKey<FormState>? formKey,
    final TextEditingController? controller,
    final Widget? prefix,
    final String? hint,
    final FormFieldValidator? validator,
    final List<TextInputFormatter>? inputFormatter,
  }) {
    return CustomTextInputField._(
      formKey: formKey,
      inputFieldType: CustomTextInputFieldType.price,
      validator: validator,
      controller: controller,
      prefix: prefix,
      showSuffix: false,
      showSuffixAlways: false,
      textAlign: TextAlign.end,
      hintText: hint,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatter: inputFormatter,
    );
  }

  factory CustomTextInputField.normal({
    final GlobalKey<FormState>? formKey,
    final String? label,
    final TextEditingController? controller,
    final FocusNode? focusNode,
    final FormFieldSetter? onSaved,
    final FormFieldValidator? validator,
    final Function(String)? onChanged,
    final TextStyle? textStyle,
    final String? hintText,
    final TextStyle? hintStyle,
    final bool showSuffix = true,
    final Widget? suffix,
    final Function()? onSuffixTap,
    final bool readOnly = false,
    final bool? enabled,
    final TextInputType? keyboardType,
    final bool autoFocus = false,
    final TextInputAction? textInputAction,
    final bool includeErrorPadding = false,
    final Function(String)? onFieldSubmitted,
    final int minLines = 1,
    final int maxLines = 1,
    final bool showSuffixAlways = false,
    final double? radius,
    final Widget? prefix,
    final bool showError = true,
  }) {
    return CustomTextInputField._(
      formKey: formKey,
      label: label,
      controller: controller,
      focusNode: focusNode,
      onSaved: onSaved,
      validator: validator,
      onChanged: onChanged,
      textStyle: textStyle,
      hintText: hintText,
      hintStyle: hintStyle,
      showSuffix: showSuffix,
      suffix: suffix,
      onSuffixTap: onSuffixTap,
      readOnly: readOnly,
      enabled: enabled,
      keyboardType: keyboardType,
      inputFieldType: CustomTextInputFieldType.normal,
      autoFocus: autoFocus,
      textInputAction: textInputAction,
      includeErrorPadding: includeErrorPadding,
      onFieldSubmitted: onFieldSubmitted,
      minLines: minLines,
      maxLines: maxLines,
      showSuffixAlways: showSuffixAlways,
      radius: radius,
      prefix: prefix,
      showError: showError,
    );
  }

  factory CustomTextInputField.email({
    final GlobalKey<FormState>? formKey,
    final String? label,
    final TextEditingController? controller,
    final FocusNode? focusNode,
    final FormFieldSetter? onSaved,
    final FormFieldValidator? validator,
    final Function(String)? onChanged,
    final TextStyle? textStyle,
    final String? hintText,
    final TextStyle? hintStyle,
    final bool readOnly = false,
    final bool? enabled,
    final bool autoFocus = false,
    final TextInputAction? textInputAction,
    final bool includeErrorPadding = false,
  }) {
    return CustomTextInputField._(
      formKey: formKey,
      label: label,
      controller: controller,
      focusNode: focusNode,
      onSaved: onSaved,
      validator: validator,
      onChanged: onChanged,
      textStyle: textStyle,
      hintText: hintText,
      hintStyle: hintStyle,
      readOnly: readOnly,
      enabled: enabled,
      keyboardType: TextInputType.emailAddress,
      inputFieldType: CustomTextInputFieldType.normal,
      autoFocus: autoFocus,
      textInputAction: textInputAction,
      includeErrorPadding: includeErrorPadding,
    );
  }

  factory CustomTextInputField.password({
    final GlobalKey<FormState>? formKey,
    final String? label,
    final TextEditingController? controller,
    final FocusNode? focusNode,
    final FormFieldSetter? onSaved,
    final FormFieldValidator? validator,
    final Function(String)? onChanged,
    final TextStyle? textStyle,
    final String? hintText,
    final TextStyle? hintStyle,
    final bool readOnly = false,
    final bool? enabled,
    final TextInputType? keyboardType,
    final bool autoFocus = false,
    final TextInputAction? textInputAction,
    final bool includeErrorPadding = false,
  }) {
    return CustomTextInputField._(
      formKey: formKey,
      label: label,
      controller: controller,
      focusNode: focusNode,
      onSaved: onSaved,
      validator: validator,
      onChanged: onChanged,
      textStyle: textStyle,
      hintText: hintText,
      hintStyle: hintStyle,
      readOnly: readOnly,
      enabled: enabled,
      keyboardType: keyboardType,
      inputFieldType: CustomTextInputFieldType.password,
      autoFocus: autoFocus,
      textInputAction: textInputAction,
      includeErrorPadding: includeErrorPadding,
    );
  }

  factory CustomTextInputField.search({
    final GlobalKey<FormState>? formKey,
    final TextEditingController? controller,
    final FocusNode? focusNode,
    final Function(String)? onChanged,
    final TextStyle? textStyle,
    final String? hintText,
    final TextStyle? hintStyle,
    final bool readOnly = false,
    final bool? enabled,
    final TextInputType? keyboardType,
    final bool autoFocus = true,
    final TextInputAction? textInputAction,
    final Widget? prefix,
    final VoidCallback? onSuffixTap,
    final VoidCallback? onPressed,
    final Function(String)? onFieldSubmitted,
  }) {
    return CustomTextInputField._(
      inputFieldType: CustomTextInputFieldType.search,
      formKey: formKey,
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      textStyle: textStyle,
      hintText: hintText,
      hintStyle: hintStyle,
      readOnly: readOnly,
      enabled: enabled,
      keyboardType: keyboardType,
      autoFocus: autoFocus,
      textInputAction: textInputAction,
      prefix: prefix,
      onSuffixTap: onSuffixTap,
      onPressed: onPressed,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
  @override
  State<StatefulWidget> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _obscureText = false;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    if (widget.inputFieldType == CustomTextInputFieldType.password) {
      _obscureText = true;
    }

    if (widget.controller == null) {
      _controller = TextEditingController();
    } else {
      _controller = widget.controller!;
    }

    if (widget.focusNode == null) {
      _focusNode = FocusNode();
    } else {
      _focusNode = widget.focusNode!;
    }
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });
  }

  _onChanged(String value) {
    // widget.formKey?.currentState?.validate();

    if (value.isEmpty) {
      _clear();
    }

    widget.onChanged?.call(value);
    setState(() {});
  }

  _buildTextFormField() {
    return Container(
      height: widget.includeErrorPadding ? 82 : null,
      child: TextFormField(
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        textAlign: widget.textAlign,
        onTap: widget.onPressed,
        maxLines: (widget.maxLines >= widget.minLines)
            ? widget.maxLines
            : widget.minLines,
        minLines: widget.minLines,
        onFieldSubmitted: widget.onFieldSubmitted,
        cursorColor: Colors.red,
        focusNode: widget.focusNode,
        autofocus: widget.autoFocus,
        textInputAction: widget.textInputAction,
        controller: _controller,
        onSaved: widget.onSaved,
        autocorrect: false,
        validator: widget.validator,
        onChanged: _onChanged,
        readOnly: widget.readOnly ?? false,
        enabled: widget.enabled,
        keyboardType: widget.keyboardType,
        obscureText: _obscureText,
        inputFormatters: widget.inputFormatter,
        decoration: InputDecoration(
          isCollapsed: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 18.5,
          ),
          fillColor: widget.enabled == false ? Colors.grey : Colors.transparent,
          filled: true,
          border: customInputBorder(context, radius: widget.radius),
          disabledBorder: customInputBorder(context, radius: widget.radius),
          enabledBorder: customInputBorder(context, radius: widget.radius),
          focusedBorder: customInputBorder(context, radius: widget.radius),
          errorBorder: customInputBorder(
            context,
            color: widget.enabled == false ? Colors.transparent : Colors.red,
            radius: widget.radius,
          ),
          hintStyle: widget.hintStyle ??
              TextStyle(
                fontFamily: 'Pretendard',
                height: 1.3,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.3),
              ),
          hintText: widget.hintText,
          prefixIcon: widget.prefix ?? _buildPrefix(),
          suffixIcon: _shouldShowSuffix()
              ? GestureDetector(
                  child: widget.suffix ?? _buildSuffix(),
                  onTap: _onSuffixTap,
                )
              : null,
          errorStyle: TextStyle(
            fontFamily: 'Pretendard',
            fontSize: widget.showError ? 12 : 0,
            color: widget.showError ? Colors.red : Colors.transparent,
            height: widget.showError ? null : 0.01,
          ),
        ),
        style: widget.textStyle ??
            TextStyle(
              fontFamily: 'Pretendard',
              height: 1.3,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.keyboardType == TextInputType.multiline
            ? Expanded(child: _buildTextFormField())
            : _buildTextFormField(),
      ]..insertAll(
          0,
          widget.label != null
              ? [
                  TextView(
                    text: widget.label!,
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(height: 8),
                ]
              : [],
        ),
    );
  }

  bool _shouldShowSuffix() {
    if (!widget.showSuffix) return widget.showSuffix;
    switch (widget.inputFieldType) {
      case CustomTextInputFieldType.password:
        return true;
      case CustomTextInputFieldType.normal:
        return widget.showSuffixAlways
            ? true
            : widget.readOnly == false && _controller.text.isNotEmpty;
      case CustomTextInputFieldType.search:
        return true;
      case CustomTextInputFieldType.price:
        return false;
    }
  }

  Widget? _buildPrefix() {
    switch (widget.inputFieldType) {
      case CustomTextInputFieldType.search:
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconAsset(
                'icon_search.svg',
                color: _hasFocus == true ? Colors.black : Colors.black,
              ),
            ],
          ),
        );
      case CustomTextInputFieldType.normal:
        break;
      case CustomTextInputFieldType.password:
        break;
      case CustomTextInputFieldType.price:
        break;
    }
    return null;
  }

  // suffix를 사용하니 vertical align center가 제대로 동작하지않아 suffixIcon으로 변경하였습니다.
  Widget _buildSuffix() {
    switch (widget.inputFieldType) {
      case CustomTextInputFieldType.password:
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 16, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconAsset(
                _obscureText ? 'icon_show.svg' : 'icon_hide.svg',
                color: Colors.black,
              ),
            ],
          ),
        );
      case CustomTextInputFieldType.search:
        return Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  visible:
                      widget.readOnly == false && _controller.text.isNotEmpty,
                  child: IconAsset(
                    'icon_delete_input.svg',
                    height: 16,
                    width: 16,
                  ),
                ),
                // 스프린트3에서는 필터 기능 제외
                Visibility(
                  visible: false,
                  child: Row(
                    children: [
                      const SizedBox(width: 6),
                      IconAsset(
                        'icon_filter.svg',
                        height: 24,
                        width: 24,
                        color: _hasFocus == true ? Colors.black : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 16, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconAsset(
                'icon_delete_input.svg',
              ),
            ],
          ),
        );
    }
  }

  void _onSuffixTap() {
    switch (widget.inputFieldType) {
      case CustomTextInputFieldType.password:
        setState(() {
          _obscureText = !_obscureText;
        });
        break;
      case CustomTextInputFieldType.search:
        if (widget.onSuffixTap != null) {
          widget.onSuffixTap!();
        }
        _clear();
        break;
      default:
        if (widget.onSuffixTap != null) {
          widget.onSuffixTap!();
        }
        _clear();
    }
  }

  _clear() {
    widget.formKey?.currentState?.reset();
    _controller.clear();
    setState(() {});
  }
}

InputBorder customInputBorder(BuildContext context,
    {Color color = Colors.transparent, double? radius}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius ?? 8),
    borderSide: BorderSide(
      color: color,
    ),
  );
}
