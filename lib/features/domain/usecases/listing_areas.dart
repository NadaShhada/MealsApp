import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/meal_areas.dart';
import '../repositories/search_repository.dart';

class ListingAreas
    implements UseCase<Future<Either<MealAreas, String>>,AreaParams   > {
  final SearchRepository repo;

  ListingAreas(this.repo);
  @override
  Future< Either<MealAreas, String>>  call(
      AreaParams params) async{
    return repo.listAreas(params
    );
  }
}
class  AreaParams {final String a;

AreaParams(this.a);

@override
  String toString() {
    return 'AreaParams{a: $a}';
  }
Map<String,String> toJson(){
  return {
    "a": a,

  };
}}
class CategoryParams{
  final String c;

  CategoryParams(this.c);

  @override
  String toString() {
    return 'CategoryParams{c: $c}';
  }
  Map<String,String> toJson(){
    return {
      "c": c,

    };}
}
class IngredientParams {
  final String i;

  IngredientParams(this.i);

  @override
  String toString() {
    return 'IngredientParams{i: $i}';
  }
  Map<String,String> toJson(){
    return {
      "i": i,

    };}
}
class SearchMealParams{
  final String s;

  SearchMealParams(this.s);

  @override
  String toString() {
    return 'SearchMealParams{s: $s}';
  }
  Map<String,String> toJson(){
    return {
      "s": s,

    };}
}
class SearchByFirstLetterParams{
  final String f;

  SearchByFirstLetterParams(this.f);

  @override
  String toString() {
    return 'SearchByFirstLetterParams{f: $f}';
  }
  Map<String,String> toJson(){
    return {
      "f": f,

    };}
}
class SearchMealByIdParams{
  final String i;

  SearchMealByIdParams(this.i);

  @override
  String toString() {
    return 'SearchMealByIdParams{i: $i}';
  }
  Map<String,String> toJson(){
    return {
      "i": i,

    };}}
