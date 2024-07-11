import 'package:softbd_task/app/data/models/network_response.dart';
import 'package:softbd_task/app/services/api_client.dart';
import 'package:softbd_task/app/services/api_end_points.dart';

class ParagraphRepository {
  static Future<NetworkResponse> getParagraph() async {
    final NetworkResponse response = await ApiClient().getRequest(ApiEndPoints.paragraph);
    return response;
  }
}