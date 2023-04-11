import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/models/visit.dart';
import 'package:http/http.dart' as http;

class VisitsController extends GetxController{

  List<Visit> _visits = [];

  List <Visit> get visits  => _visits;

  void fetchCars() async {

    try{

      final response = await http.get(Uri.parse("_carsUrl"));
      if(response.statusCode ==200){
        Iterable iterable = json.decode(response.body);
        _visits = List<Visit>.from(iterable.map((car) => Visit.fromJson(car)));
      } else {

        throw Exception('failed to load json');
      }

      // Iterable iterable = json.decode(Fake.ourResponseData);
      // _cars = List<Car>.from(iterable.map((car) => Car.fromJson(car)));
      // notifyListeners();

    }catch (e){

      print(e.toString());
      throw Exception(e.toString());

    }
  }


}