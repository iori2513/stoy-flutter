import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/constants/text_styles.dart';

class AuthTextField extends StatefulWidget {
  final String label;
  final bool password;
  final void Function(String value) onChangeText;
  final String placeholder;

  const AuthTextField(
      {super.key,
      required this.label,
      required this.password,
      required this.onChangeText,
      this.placeholder = ''});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396.w,
      height: 80.h,
      child: Column(
        children: [
          SizedBox(
            height: 26.h,
            child: Row(
              children: [
                Text(
                  widget.label,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.primary),
                ),
                const Spacer()
              ],
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 46.h,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              onChanged: widget.onChangeText,
              obscureText: _isObscure,
              cursorColor: AppColor.primaryColor,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                border: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColor.borderColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6.0))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primaryColor)),
                hintText: widget.placeholder,
                suffixIcon: widget.password
                    ? IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
