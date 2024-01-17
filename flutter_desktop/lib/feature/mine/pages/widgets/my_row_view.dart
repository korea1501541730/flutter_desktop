
import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/mine/pages/models/my_model.dart';

import '../../../../constants/app_colors.dart';

class MineRowView extends StatelessWidget {
  MineModel model;
  MineRowView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: _buildRow(model),
    );
  }

  Row _buildRow(MineModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image(
          image: AssetImage(model.imagePath),
          width: 24,
          height: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
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
        Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Image(
                    image: AssetImage('assets/images/detailarrow.png'),
                    width: 20,
                    height: 20,
                  ),
                ),
                Text(
                  model.text,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.title333,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ))
      ],
    );
  }
}
