import 'package:nobuzz_app/core/htpp/http_dio.dart';
import 'package:nobuzz_app/core/htpp/i_http.dart';
import 'package:nobuzz_app/model/feedback_model.dart';

class FeedbackRepository {
    final IHttp http = HttpDio();

      Future<Feedback?> getFeedback() async {
    final response = await http.post('tempo');

    if (response.data != null) {
      return Feedback.fromJson(response.data);
    }
    return null;
  }
}