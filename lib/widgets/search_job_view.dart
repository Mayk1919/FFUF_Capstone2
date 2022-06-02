import 'package:capstone2/provider/job_data.dart';
import 'package:capstone2/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:capstone2/models/models.dart';
import 'package:provider/provider.dart';

class SearchJobView extends StatelessWidget {
  const SearchJobView({
    Key? key,
  }) : super(key: key);

 final String searchParameter = '';


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<JobData>(context).getSearchScreenData(),
        builder:
            (BuildContext context, AsyncSnapshot<SearchScreenModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final jobSearches = snapshot.data?.mostRecentJobs ?? [];

            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: MediaQuery.of(context).size.height * .6,
              color: Colors.transparent,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final jobSearch = jobSearches[index];
                  return Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.transparent,
                    elevation: 8,
                    child: Container(
                      height: MediaQuery.of(context).size.height * .13,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20.0,
                              ),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image(
                                    image: AssetImage(jobSearch.imageUrl)),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    jobSearch.company,
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    jobSearch.jobTitle,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'P${jobSearch.salary}/m',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          jobSearch.location,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FavoriteWidget(
                                  isFavorite: jobSearch.isFavorite,
                                  id: jobSearch.jobId,
                                ),
                                Text(
                                  jobSearch.datePosted,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  );
                },
                itemCount: jobSearches.length,
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
