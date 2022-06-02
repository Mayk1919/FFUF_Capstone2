class JobModel {
  int jobId;
  String jobTitle;
  String company;
  String category;
  String subCategory;
  String location;
  double salary;
  String jobType;
  int jobApplicantCount;
  bool isApplied ;
  bool isFavorite ;
  List jobDescriptions;
  List requirements;
  List reviews;
  String datePosted;
  String imageUrl;

  JobModel({
    required this.jobId,
    required this.jobTitle,
    required this.company,
    required this.category,
    required this.subCategory,
    required this.location,
    required this.salary,
    required this.jobType,
    this.jobApplicantCount  = 0,
    this.isApplied = false,
    this.isFavorite= false ,
    required this.jobDescriptions,
    required this.requirements,
    this.reviews= const [] ,
    required this.datePosted,
    required this.imageUrl,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      jobId: json['jobId'] ?? '',
      jobTitle: json['jobTitle'] ?? '',
      company: json['company'] ?? '',
      category: json['category'] ?? '',
      subCategory: json['subCategory'] ?? '',
      location: json['location'] ?? '',
      salary: json['salary'] ?? '',
      jobType: json['jobType'] ?? '',
      jobDescriptions: json['jobDescriptions'] ?? '',
      requirements: json['requirements'] ?? '',
      datePosted: json['datePosted'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      jobApplicantCount: json['jobApplicantCount'] ?? 0,
      isApplied: json['isApplied'] ?? false,
      isFavorite: json['isFavorite'] ?? false,
      reviews: json['reviews'] ?? List.empty(growable: true),
    );
  }
}
