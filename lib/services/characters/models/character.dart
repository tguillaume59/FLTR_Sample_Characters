import 'package:Sample_Characters/services/characters/models/sex_enum.dart';

class Character {
  int id = -1;
  String firstName;
  String lastName;
  int age;
  String job = "";
  SexEnum sex;
  String pictureUrl = "";

  Character(String firstName, String lastName, int age, SexEnum sex, String job, String pictureUrl){
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    this.sex = sex;
    this.job = job;
    this.pictureUrl = pictureUrl;
  }

  String getFullName(){
    return "$firstName $lastName";
  }
}
