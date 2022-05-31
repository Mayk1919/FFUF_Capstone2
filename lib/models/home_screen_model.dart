import 'package:capstone2/models/models.dart';

class HomeScreenModel {
  final List<JobModel> popularJobs;
  final List<JobModel> recentJobPosts;

  HomeScreenModel(
    this.popularJobs,
    this.recentJobPosts,
  );
}
