class MainhomeItemModel {
  final int id; // ": 6,
  final String title; // ": "Event_one",
  final String content; // ": "Displaying of the first event",
  final int createdById; //": 1,
  final String date; // ": "2023-01-05T00:00:00.000000Z",
  final String status; // ": "Enabled",
  final String isRead; // ": "no",
  final String slug; // ": "event-one",
  final String image; // ": "MyPhoto_page-0001.jpg",
  final String createdAt; // ": "2023-01-02T11:56:21.000000Z",
  final String updatedAt; // ": "2023-01-02T11:56:21.000000Z",
  final double longitude; // ": 77.641151,
  final double latitude; // ": 12.971891,
  final String venue; // ": "bangalore palace",
  final int categoryId; // ": 9,
  final String categoryName; // ": "Technology"

  MainhomeItemModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.createdById,
      required this.date,
      required this.status,
      required this.isRead,
      required this.slug,
      required this.image,
      required this.createdAt,
      required this.updatedAt,
      required this.longitude,
      required this.latitude,
      required this.venue,
      required this.categoryId,
      required this.categoryName});

  factory MainhomeItemModel.fromJson(Map<String, dynamic> json) {
    return MainhomeItemModel(title: json['title']);
  }
}
