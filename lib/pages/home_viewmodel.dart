import 'package:music_flutter/base/base_viewmodel.dart';

import '../models/album_model.dart';
import '../models/music_model.dart';

class HomeVM extends BaseViewModel {
  List<AlbumModel> listAlbum = [];
  List<MusicModel> listMusics = [];

  @override
  void onInit() {
    fetchDataAlbum();
  }

  Future<void> fetchDataAlbum() async {
    listAlbum.add(AlbumModel(
        "https://static-images.vnncdn.net/files/publish/2022/11/24/316940708-3270416153221165-3247951730807698810-n-887.jpeg",
        "Mario - Ozawa",
        "description"));
    listAlbum.add(AlbumModel(
        "https://icdn.dantri.com.vn/thumb_w/640/2019/12/20/diem-danh-12-hot-girl-noi-bat-nhat-nam-2019-docx-1576850955802.jpeg",
        "Mario - Dong",
        "description"));
    listAlbum.add(AlbumModel(
        "https://static-images.vnncdn.net/files/publish/2022/11/24/316940708-3270416153221165-3247951730807698810-n-887.jpeg",
        "Mario - Hoang",
        "description"));
    listAlbum.add(AlbumModel(
        "https://static-images.vnncdn.net/files/publish/2022/11/24/nhan-sac-tre-dep-cua-cao-thu-trang-hotgirl-nong-cung-world-cup-9f1178f4987445ba89599e83c193e2f0.jpg",
        "Mario - Tukuda",
        "description"));
    listAlbum.add(AlbumModel(
        "https://static-images.vnncdn.net/files/publish/2022/11/24/316940708-3270416153221165-3247951730807698810-n-887.jpeg",
        "Mario - Linh",
        "description"));
    notifyListeners(); // update view
  }

  void fetchDataMusics() {
    listMusics.add(MusicModel());
    listMusics.add(MusicModel());
    listMusics.add(MusicModel());
    listMusics.add(MusicModel());
    listMusics.add(MusicModel());
  }
}
