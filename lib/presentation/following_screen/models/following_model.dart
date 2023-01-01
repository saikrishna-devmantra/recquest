import 'package:get/get.dart';
import 'following_item_model.dart';

class FollowingModel {
  RxList<FollowingItemModel> followingItemList =
      RxList.filled(10, FollowingItemModel());
}
