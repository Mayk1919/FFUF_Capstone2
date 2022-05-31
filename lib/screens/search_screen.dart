import 'package:flutter/material.dart';
import 'package:capstone2/screens/screens.dart';
import 'package:capstone2/models/models.dart';
import 'package:capstone2/provider/job_data.dart';
import 'package:capstone2/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  int index;
  SearchScreen({
    Key? key,
    required this.index,
    }) : super(key: key);
  final apiService = JobData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Search',
            style: Theme.of(context).textTheme.headline5,
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SearchMenuWidget(searchItem: "Search",),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                //'${Provider.of<JobData>(context).getSearchScreenData()} Job Oppotunities',
                '',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            FilterSelectionView(selectedFilterIndex:index),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            SearchJobView(),
          ],
        ));
  }
}
