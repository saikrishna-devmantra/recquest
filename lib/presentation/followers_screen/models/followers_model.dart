import 'package:get/get.dart';
import 'followers_item_model.dart';

class FollowersModel {
  RxList<FollowersItemModel> followersItemList =
      RxList.filled(10, FollowersItemModel());
}
