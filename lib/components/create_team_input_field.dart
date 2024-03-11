import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.teamOneName,
  });

  final TextEditingController teamOneName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [LengthLimitingTextInputFormatter(20)],
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'Input cannot be empty';
        }
        return null;
      },
      controller: teamOneName,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        border: OutlineInputBorder(),
      ),
    );
  }
}
