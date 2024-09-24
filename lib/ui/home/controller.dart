import 'package:flutter_getx_demo/data/models/post/post.dart';
import 'package:flutter_getx_demo/data/network/repository/post_repository.dart';
import 'package:flutter_getx_demo/ui/global_widgets/bottom_nav.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final postRepository = Get.find<PostRepository>();

  final _postsList = <Post>[].obs;
  List<Post> get postList => _postsList;
  set postList(value) => _postsList.value = value;

  final _currentSelectedItem = BottomNavBarItem.home.obs;
  BottomNavBarItem get currentNavItem => _currentSelectedItem.value;

  onNavItemClicked(BottomNavBarItem navBarItem){
    _currentSelectedItem.value = navBarItem;
  }

  getAll() {
    postRepository.getPosts().then((data) {
      postList = data.posts;
    });
  }
}
