class CvModel {
  String firstName;
  String lastName;
  String? middleName;

  String? slackUsername;
  String? githubHandle;
  String? personalBio;

  get fullname => "$firstName $middleName $lastName";

  CvModel({
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.slackUsername,
    required this.githubHandle,
    required this.personalBio,
  });
}
