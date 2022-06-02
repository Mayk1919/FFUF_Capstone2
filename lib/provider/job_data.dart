import 'package:capstone2/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:capstone2/sample_data/jobs_data.dart' as jobs_data;

class JobData extends ChangeNotifier {
  Future<HomeScreenModel> getHomeScreenData() async {
    final popularJobs = await _getPopularJobs();
    final recentJobPosts = await _getRecentJobPost(allJobs: false);
    return HomeScreenModel(popularJobs, recentJobPosts);
  }

  String searchOption = '';
  Future<SearchScreenModel> getSearchScreenData() async {
    List<JobModel> searchResult = <JobModel>[];
    switch (searchOption) {
      case 'mostRecentJobs':
        print('mostRecentJobs');
        searchResult = await _getRecentJobPost(allJobs: true);

        break;

      case 'mostRelevantJobPost':
        print('mostRelevantJobPost');
        searchResult = await _getMostRelevantJobPost();

        break;

        case 'mostPopular':
        print('mostRelevantJobPost');
        searchResult = await _getPopularJobs(allJobs: true);

        break;

      default:
        searchResult = <JobModel>[];
    }

    return SearchScreenModel(searchResult);
  }

  Future<List<JobModel>> _getPopularJobs({bool allJobs = false}) async {
    //await Future.delayed(const Duration(milliseconds: 1000));
    final jobs = <JobModel>[];
    //final dataString = await _loadAsset('assets/sample_data/jobs_data.dart');

    final Map<String, dynamic> json = jsonDecode(jobs_data.jobsJson);

    if (json['jobs'] != null) {
      json['jobs'].forEach((value) {
        jobs.add(JobModel.fromJson(value));
      });
      jobs.sort((a, b) => a.jobApplicantCount.compareTo(b.jobApplicantCount));
      int x =0;
      allJobs ?  x = 0 :  x = jobs.length - 5;
      final popularJobs = <JobModel>[];
      while (x < jobs.length) {
        popularJobs.add(jobs[x]);
        x += 1;
      }

      return popularJobs;
    } else {
      return List.empty(growable: true);
    }
  }

  Future<List<JobModel>> _getRecentJobPost({required bool allJobs}) async {
    // await Future.delayed(const Duration(milliseconds: 1000));
    //final dataString = await _loadAsset('assets/sample_data/jobs_data.dart');
    final jobs = <JobModel>[];
    final Map<String, dynamic> json = jsonDecode(jobs_data.jobsJson);

    if (json['jobs'] != null) {
      json['jobs'].forEach((value) {
        jobs.add(JobModel.fromJson(value));
      });
      jobs.sort((a, b) {
        DateTime firstDate = DateFormat('dd MMMM yyyy').parse(a.datePosted);
        DateTime secondDate = DateFormat('dd MMMM yyyy').parse(b.datePosted);

        return firstDate.compareTo(secondDate);
      });

      int x = 0;
      allJobs ? x = 0 : x = jobs.length - 6;
      final recentJobPosts = <JobModel>[];
      while (x < jobs.length) {
        recentJobPosts.add(jobs[x]);
        x += 1;
      }

      return recentJobPosts.reversed.toList();
    } else {
      return List.empty(growable: true);
    }
  }

  Future<List<JobModel>> _getMostRelevantJobPost() async {
    // await Future.delayed(const Duration(milliseconds: 1000));
    //final dataString = await _loadAsset('assets/sample_data/jobs_data.dart');
    final jobs = <JobModel>[];
    final Map<String, dynamic> json = jsonDecode(jobs_data.jobsJson);

    if (json['jobs'] != null) {
      json['jobs'].forEach((value) {
        if (value['isFavorite']) {
          jobs.add(JobModel.fromJson(value));
        }
      });

      return jobs;
    } else {
      return List.empty(growable: true);
    }
  }

  Future<void> updateFavorite(index) async {
    final Map<String, dynamic> jsonFile = jsonDecode(jobs_data.jobsJson);
    if (jsonFile['jobs'] != null) {
      jsonFile['jobs'].forEach((value) {
        if (value['jobId'] == index) {
          value['isFavorite'] = !value['isFavorite'];
          jobs_data.jobsJson = jsonEncode(jsonFile);
          notifyListeners();
        }
      });
    }
  }

  void updateSearchParameter(parameter) {
    searchOption = parameter;
    notifyListeners();
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
