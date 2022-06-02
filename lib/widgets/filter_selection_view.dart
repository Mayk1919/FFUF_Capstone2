import 'package:capstone2/provider/job_data.dart';
import 'package:capstone2/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:capstone2/models/models.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class FilterSelectionView extends StatefulWidget {
  int selectedFilterIndex;
  FilterSelectionView({
    Key? key,
    required this.selectedFilterIndex,
  }) : super(key: key);

  @override
  State<FilterSelectionView> createState() =>
      _FilterSelectionViewState(selectedFilterIndex: selectedFilterIndex);
}

class _FilterSelectionViewState extends State<FilterSelectionView> {
   int selectedFilterIndex;
  _FilterSelectionViewState({
    required this.selectedFilterIndex,
  });
  final List selections = [
    'Most Recent',
    'Most Relevant',
    'Most Popular',
  ];
  

  void _selectedFilter(int index) {
    setState(() {
      selectedFilterIndex = index;
    });
    String searchParameter = '';
    switch (index) {
      case 0:
        searchParameter = 'mostRecentJobs';
        break;
      case 1:
        searchParameter = 'mostRelevantJobPost';
        break;
      case 2:
        searchParameter = 'mostPopular';
        break;
      default:
        searchParameter = '';
    }
    Provider.of<JobData>(context, listen: false)
        .updateSearchParameter(searchParameter);
  }
final itemScrollController = ItemScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      color: Colors.transparent,
      child: ScrollablePositionedList.separated(
        initialScrollIndex: selectedFilterIndex,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _selectedFilter(index);
            },
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.transparent,
              elevation: index == selectedFilterIndex ? 8 : 0,
              child: Container(
                width: 140,
                decoration: BoxDecoration(
                  color: index == selectedFilterIndex
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                alignment: Alignment.center,
                child: Text(selections[index]),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: 3,
      ),
    );
  }
}
