import 'package:flutter/material.dart';
import 'package:capstone2/models/models.dart';

class RecentJobPostView extends StatelessWidget {
  final List<JobModel> recentJobPosts;
  const RecentJobPostView({
    required this.recentJobPosts,
    Key? key,
  }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: MediaQuery.of(context).size.height * .3,
      color: Colors.transparent,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final recentJobPost = recentJobPosts[index];
          return Material(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.transparent,
            elevation: 8,
            child: Container(
              height: MediaQuery.of(context).size.height * .1,
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
                        right:20.0,
                        ),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage(recentJobPost.imageUrl)),
                        ),
                    ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      Text(
                        recentJobPost.jobTitle,
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      )   ,
                       Text(
                        recentJobPost.jobType,
                        style: Theme.of(context).textTheme.subtitle1,
                      )                           
                      
                          ],
                        ),
                      ),
                   Text(
                        'P${recentJobPost.salary}/m',
                        style: Theme.of(context).textTheme.subtitle2,

                      )  
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return  SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          );
        },
        itemCount: recentJobPosts.length,
      ),
    );
  }
}
