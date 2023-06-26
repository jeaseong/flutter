import 'package:http/http.dart' as http;
import 'package:my_app/webtoon/models/webtoon_detail_model.dart';
import 'package:my_app/webtoon/models/webtoon_episode_model.dart';
import 'dart:convert';
import 'package:my_app/webtoon/models/webtoon_model.dart';

class ApiServices {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev/";
  static const String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }

  Future<DetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl$id");
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final webtoon = jsonDecode(res.body);
      return DetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  Future<List<EpisodeModel>> getLatestEpisodeById(String id) async {
    final url = Uri.parse("$baseUrl$id/episodes");
    final res = await http.get(url);
    List<EpisodeModel> episodesInstance = [];
    if (res.statusCode == 200) {
      final episodes = jsonDecode(res.body);
      for (var episode in episodes) {
        episodesInstance.add(EpisodeModel.fromJson(episode));
      }
      return episodesInstance;
    }
    throw Error();
  }
}
