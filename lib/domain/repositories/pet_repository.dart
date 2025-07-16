import '../entities/pet.dart';

abstract class PetRepository {
  Future<List<Pet>> getPets();
  Future<List<Pet>> getPetsByCategory(String category);
  Future<Pet> getPetDetail(String id);
}
