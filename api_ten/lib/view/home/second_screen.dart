import 'package:api_ten/model/anime_list_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final Dio dio = Dio();

  AnimeListModel? animeListModel;

  ScrollController? scrollController = ScrollController();

  int index = 1;

  @override
  void initState() {
    // TODO: implement initState
    fetchListData();
    scrollController!.addListener(pagination);
    super.initState();
  }

  void pagination() {
    debugPrint("scrollController!.position.pixels --> ${scrollController!.position.pixels}");
    debugPrint("scrollController!.position.maxScrollExtent --> ${scrollController!.position.maxScrollExtent}");

    if ((scrollController!.position.pixels == scrollController!.position.maxScrollExtent)) {
      debugPrint("Scroll is max -->");
      index++;
      fetchListData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagination"),
      ),
      body: animeListModel == null
          ? const Text("No Data Found")
          : ListView.separated(
              controller: scrollController,
              itemCount: animeListModel!.data!.length,
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemBuilder: (context, index) => ListTile(
                title: Text(animeListModel!.data![index].title!),
                subtitle: Text(animeListModel!.data![index].synopsis!),
                leading: Image.network(animeListModel!.data![index].image!),
              ),
            ),
    );
  }

  void fetchListData() async {
    await dio
        .get('https://anime-db.p.rapidapi.com/anime?page=$index&size=15',
            options: Options(
              headers: {
                'X-RapidAPI-Key': '66378e2ecemsh74a0e65e91ed8a2p18a8d5jsnacebfcd1e470',
                'X-RapidAPI-Host': 'anime-db.p.rapidapi.com',
              },
            ))
        .then((value) {
      debugPrint("Value --> $value");
      if (value.statusCode == 200) {
        if (index == 1) {
          animeListModel = AnimeListModel.fromJson(value.data);
        } else {
          for (var data in value.data["data"]) {
            animeListModel!.data!.add(Datum.fromJson(data));
          }
          setState(() {});
        }

        if (index == animeListModel!.meta!.totalPage) {
          scrollController!.removeListener(pagination);
        }

        setState(() {});
      } else if (value.statusCode == 500) {
        debugPrint("Server Not Connect");
      }
    });
  }
}
