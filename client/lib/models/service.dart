import 'package:client/services/service.dart';

class Service {
  String id;
  String name;
  String role;
  double price;

  Future<Map<String, dynamic>> create() async {
    return createService(this);
  }

  Future<Map<String, dynamic>> delete() async {
    return null;//deleteService(this); TODO implement delete service
  }

  static Future<List<Service>> getServiceList() async {
    return getServices();
  }

  Service(this.id, this.name, this.price, this.role);
  
}