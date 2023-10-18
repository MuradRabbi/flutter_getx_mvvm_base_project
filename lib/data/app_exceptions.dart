


class AppExceptions implements Exception {
  final  _message;
  final  _prefix;

  AppExceptions([this._message, this._prefix]);


  String toString(){
    return '$_message$_prefix';
  }
}


class InternetExceptions extends AppExceptions{
  InternetExceptions(String? message): super( 'No Internet ', message);
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut(String? message): super( 'Request Timeout ',message);
}

class ServerError extends AppExceptions{
  ServerError(String? message): super('Server Error ', message);
}


class InvalidUrlExceptions extends AppExceptions{
  InvalidUrlExceptions(String? message): super('Invalid URL ', message);
}


class FetchDataExceptions extends AppExceptions{
  FetchDataExceptions(String? message): super('Error ', message);
}