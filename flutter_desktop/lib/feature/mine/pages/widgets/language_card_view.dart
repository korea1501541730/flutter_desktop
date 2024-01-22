
import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/mine/pages/models/language_model.dart';
import '../../../../constants/app_colors.dart';

class LanguageCardView extends StatelessWidget {
  LanguageModel model;
  LanguageCardView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      color: AppColors.white,
      shape: RoundedRectangleBorder(
          side: model.select?BorderSide(
              width:0.5,
              color: AppColors.title333
          ):BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(12.0))),
      child: SizedBox(
        height: 56,
        child: _buildRow(model),
      ),
    );
  }

  Row _buildRow(LanguageModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            model.title,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        model.select
            ? const Expanded(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Image(
                      image: AssetImage('assets/images/selecticon.png'),
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ))
            : const SizedBox(width: 0),
      ],
    );
  }
}
