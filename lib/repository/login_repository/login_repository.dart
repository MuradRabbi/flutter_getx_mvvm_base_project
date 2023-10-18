import '../../data/network/network_api_service.dart';
import '../../resources/app_urls/app_urls.dart';

class LoginRepository{

  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async{
    dynamic response = await _apiServices.postApi(data, AppUrls.loginApi);
    return response;
  }
}