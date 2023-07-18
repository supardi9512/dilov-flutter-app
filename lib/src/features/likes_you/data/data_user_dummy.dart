import 'package:dilov_app/src/features/likes_you/domain/user.dart';
import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';

List<User> dataUserDummy = [
  User(
    fullname: 'Yunita',
    age: 22,
    occupation: 'Teacher',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis est sit amet lacus egestas dapibus. Nullam eu neque lacinia, bibendum erat at, aliquam mauris. Mauris maximus erat vel lectus iaculis, non mollis arcu elementum.',
    imagePath: '${AssetImageManager.assetPath}/people-love-1.png',
  ),
  User(
    fullname: 'Rimadona',
    age: 24,
    occupation: 'Doctor',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis est sit amet lacus egestas dapibus. Nullam eu neque lacinia, bibendum erat at, aliquam mauris. Mauris maximus erat vel lectus iaculis, non mollis arcu elementum.',
    imagePath: '${AssetImageManager.assetPath}/people-love-2.png',
  ),
  User(
    fullname: 'Aninda',
    age: 21,
    occupation: 'Entrepreneur',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis est sit amet lacus egestas dapibus. Nullam eu neque lacinia, bibendum erat at, aliquam mauris. Mauris maximus erat vel lectus iaculis, non mollis arcu elementum.',
    imagePath: '${AssetImageManager.assetPath}/people-love-3.png',
  )
];
