import 'package:youtube_clone/constants/asset_const.dart';

class ChannelEntity {
  String? channelName;
  String? profilePicture;

  ChannelEntity({this.channelName, this.profilePicture});

  static List<ChannelEntity> channels = [
    ChannelEntity(
      channelName: 'Tech Videos',
      profilePicture: AssetConst.profile1,
    ),
    ChannelEntity(
      channelName: 'Cooking Channel',
      profilePicture: AssetConst.profile2,
    ),
    ChannelEntity(
      channelName: 'Travel Vlogs',
      profilePicture: AssetConst.profile1,
    ),
    ChannelEntity(
      channelName: 'Fitness Tips',
      profilePicture: AssetConst.profile2,
    ),
    ChannelEntity(
      channelName: 'Music Channel',
      profilePicture: AssetConst.profile1,
    ),
  ];
}
