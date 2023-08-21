import '/src/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.lOADING;

  ApiResponse.completed() : status = Status.cOMPLETED;

  ApiResponse.error() : status = Status.eRROR;

  @override
  String toString() {
    return 'status : $status \n Message : $message \n Data : $data';
  }
}
