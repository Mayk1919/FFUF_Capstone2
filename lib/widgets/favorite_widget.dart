import 'package:capstone2/provider/job_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteWidget extends StatelessWidget {
  bool isFavorite;
  int id;
  FavoriteWidget({
    Key? key,
    required this.id,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<JobData>(context,listen: false).updateFavorite(id);
      },
      child: isFavorite
          ? const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : const Icon(
              Icons.favorite_border,
            ),
    );
  }
}
