import '../entities/pet.dart';
import '../repositories/pet_repository.dart';

class GetPetsByCategory {
  final PetRepository repository;
  GetPetsByCategory(this.repository);

  Future<List<Pet>> call(String category) async {
    return await repository.getPetsByCategory(category);
  }
}
