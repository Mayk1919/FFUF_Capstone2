import 'package:capstone2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SearchMenuWidget extends StatelessWidget {
  final String searchItem;
  const SearchMenuWidget({Key? key, required this.searchItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchTextFieldWidget(searchItem: searchItem),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Color(0XFFFBFBFB),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                            )), 
                  isDismissible: true,
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return ModalButtomSheetWidget();
                  });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Color(0XFF4CA6A8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
