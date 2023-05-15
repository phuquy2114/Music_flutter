import 'package:flutter/material.dart';
import 'package:music_flutter/gen/assets.gen.dart';
import 'package:music_flutter/pages/home_viewmodel.dart';
import 'package:provider/provider.dart';

import '../base/base_page.dart';
import '../components/item_album_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with MixinBasePage<HomeVM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Container(
            margin: const EdgeInsets.only(left: 29),
            child: Assets.icons.icDrawer.svg(),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 29),
              child: Assets.icons.icSearch.svg(),
            )
          ],
          title: const Text(
            "Music Player",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
        body: builder(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 8.0),
                  child: Text(
                    'Top Albumb',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: provider.listAlbum.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemAlbumWidget(
                          model: provider.listAlbum[index],
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, bottom: 8.0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: provider.listMusics.length, itemBuilder: (BuildContext context, int index) {
                    return
                },

                )
              ],
            )));
  }

  @override
  HomeVM create() => HomeVM();

  @override
  void initialise(BuildContext context) {}
}
