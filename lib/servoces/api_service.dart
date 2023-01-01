import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    // async(비동기) 프로그래밍 -> 어떤 일이 일어날 때까지 기다림
    final url = Uri.parse('$baseUrl/$today');
    final response = await http
        .get(url); // 기다리게 하고 싶으면 await사용, await를 사용하기 위해서는 async 함수 내에서만 사용 가능

    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
