import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColors.containerBackground),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  const BorderSide(color: AppColors.containerBackground)),
          suffixIcon: const Icon(
            Icons.search_off_outlined,
            color: AppColors.black,
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: AppColors.categoryNames,
            fontSize: 15,
          ),
          fillColor: AppColors.containerBackground,
          filled: true,
        ),
      ),
    );
  }
}
