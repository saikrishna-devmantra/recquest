class MainhomeItemModel {
  int? _id;
  String? _title;
  String? _content;
  int? _createdById;
  String? _date;
  String? _status;
  String? _isRead;
  String? _slug;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
  double? _longitude;
  double? _latitude;
  String? _venue;
  int? _categoryId;
  String? _categoryName;

  MainhomeItemModel(
      {int? id,
      String? title,
      String? content,
      int? createdById,
      String? date,
      String? status,
      String? isRead,
      String? slug,
      String? image,
      String? createdAt,
      String? updatedAt,
      double? longitude,
      double? latitude,
      String? venue,
      int? categoryId,
      String? categoryName}) {
    if (id != null) {
      this._id = id;
    }
    if (title != null) {
      this._title = title;
    }
    if (content != null) {
      this._content = content;
    }
    if (createdById != null) {
      this._createdById = createdById;
    }
    if (date != null) {
      this._date = date;
    }
    if (status != null) {
      this._status = status;
    }
    if (isRead != null) {
      this._isRead = isRead;
    }
    if (slug != null) {
      this._slug = slug;
    }
    if (image != null) {
      this._image = image;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (longitude != null) {
      this._longitude = longitude;
    }
    if (latitude != null) {
      this._latitude = latitude;
    }
    if (venue != null) {
      this._venue = venue;
    }
    if (categoryId != null) {
      this._categoryId = categoryId;
    }
    if (categoryName != null) {
      this._categoryName = categoryName;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get content => _content;
  set content(String? content) => _content = content;
  int? get createdById => _createdById;
  set createdById(int? createdById) => _createdById = createdById;
  String? get date => _date;
  set date(String? date) => _date = date;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get isRead => _isRead;
  set isRead(String? isRead) => _isRead = isRead;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  double? get longitude => _longitude;
  set longitude(double? longitude) => _longitude = longitude;
  double? get latitude => _latitude;
  set latitude(double? latitude) => _latitude = latitude;
  String? get venue => _venue;
  set venue(String? venue) => _venue = venue;
  int? get categoryId => _categoryId;
  set categoryId(int? categoryId) => _categoryId = categoryId;
  String? get categoryName => _categoryName;
  set categoryName(String? categoryName) => _categoryName = categoryName;

  MainhomeItemModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _content = json['content'];
    _createdById = json['created_by_id'];
    _date = json['date'];
    _status = json['status'];
    _isRead = json['is_read'];
    _slug = json['slug'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
    _venue = json['venue'];
    _categoryId = json['category_id'];
    _categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['content'] = this._content;
    data['created_by_id'] = this._createdById;
    data['date'] = this._date;
    data['status'] = this._status;
    data['is_read'] = this._isRead;
    data['slug'] = this._slug;
    data['image'] = this._image;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['longitude'] = this._longitude;
    data['latitude'] = this._latitude;
    data['venue'] = this._venue;
    data['category_id'] = this._categoryId;
    data['category_name'] = this._categoryName;
    return data;
  }
}
