import 'package:capstone2/provider/job_data.dart';
import 'package:capstone2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:capstone2/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<JobData>(context,listen: false).getHomeScreenData(),
      builder: (BuildContext context, AsyncSnapshot<HomeScreenModel> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recentJobPosts = snapshot.data?.recentJobPosts ?? [];

          return ListView(
            children: [
              const SearchMenuWidget(searchItem: 'Search here...'),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Job',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<JobData>(context,listen: false).updateSearchParameter('mostPopular');
  
                        Navigator.of(context).pushNamed('/search',arguments:2);

                      },
                      child: Text(
                        'Show All',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              const PopularJobsListView(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Job Post',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    GestureDetector(
                      onTap: () {
                         Provider.of<JobData>(context,listen: false).updateSearchParameter('mostPopular');
  
                        Navigator.of(context).pushNamed('/search',arguments:0);

                      },
                      child: Text(
                        'Show All',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              RecentJobPostView(recentJobPosts: recentJobPosts),
            ],
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
