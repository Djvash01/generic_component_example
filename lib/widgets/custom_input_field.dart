import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? helperText;
  final String? hintText;
  final Widget? labelText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key,
    this.helperText,
    this.hintText,
    this.labelText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {},
      validator: (value) {
        if (value == null) return 'Estecampo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        label: labelText,
        helperText: helperText,
        suffixIcon: icon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
