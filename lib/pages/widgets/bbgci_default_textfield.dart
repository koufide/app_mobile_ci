import 'package:app_mobile_ci/pages/configuration/colors.dart';
import 'package:app_mobile_ci/pages/configuration/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BbgciDefaultTextfield extends StatefulWidget {
  final TextEditingController textController;
  final FocusNode? focusNode;
  final TextInputType inputType;
  final String placeholder;
  final IconData? prefixIcon;
  final bool obscureText;

  const BbgciDefaultTextfield({
    super.key,
    required this.textController,
    required this.placeholder,
    this.prefixIcon,
    this.focusNode,
    this.obscureText = false,
    this.inputType = TextInputType.text,
  });

  @override
  State<BbgciDefaultTextfield> createState() => _BbgciDefaultTextfieldState();
}

class _BbgciDefaultTextfieldState extends State<BbgciDefaultTextfield> {
  FocusNode _focusNode = FocusNode();
  bool _obscureText = false;

  @override
  void initState() {
    if (widget.focusNode != null) {
      _focusNode = widget.focusNode!;
    }

    _obscureText = widget.obscureText;

    super.initState();

    _focusNode.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  } //initState

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      padding: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondary,
          width: 1,
        )
      ),
      child: TextField(
        focusNode: _focusNode,
        obscureText: _obscureText,
        controller: widget.textController,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          icon: Icon(
            widget.prefixIcon ?? Icons.email,
            color: AppColors.orangebbgci,
          ),
          hintText: widget.placeholder,
          border: InputBorder.none,
        ),
      ),
    );
  } //build
} //BbgciDefaultTextfield
