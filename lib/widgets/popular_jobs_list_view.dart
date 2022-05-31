import 'package:capstone2/provider/job_data.dart';
import 'package:capstone2/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:capstone2/models/models.dart';
import 'package:provider/provider.dart';

class PopularJobsListView extends StatelessWidget {
  const PopularJobsListView({
    Key? key,
  }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<JobData>(context).getHomeScreenData(),
      builder: (BuildContext context, AsyncSnapshot<HomeScreenModel> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final popularJobs = snapshot.data?.popularJobs ?? [];
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: MediaQuery.of(context).size.height * .2,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final popularJob = popularJobs[index];
                return Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.transparent,
                  elevation: 8,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      child: Image(
                                          image:
                                              AssetImage(popularJob.imageUrl)),
                                    ),
                                    Text(
                                      popularJob.company,
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    )
                                  ],
                                ),
                              ),
                              FavoriteWidget(
                                  isFavorite: popularJob.isFavorite,
                                  id: popularJob.jobId),
                            ],
                          ),
                          Text(popularJob.jobTitle,
                              style: Theme.of(context).textTheme.bodyText2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'P ${popularJob.salary}/m',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                popularJob.location,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 20,
                );
              },
              itemCount: popularJobs.length,
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
