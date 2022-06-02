import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatelessWidget {
  final String searchItem;
  const SearchTextFieldWidget({Key? key, required this.searchItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .01,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              fillColor: Colors.white,
              filled: true,
              prefixIcon: const Icon(Icons.search),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: searchItem,
              helperStyle: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ),
    );
  }
}
