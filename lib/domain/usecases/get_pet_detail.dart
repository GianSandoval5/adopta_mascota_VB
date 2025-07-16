import '../entities/pet.dart';
import '../repositories/pet_repository.dart';

class GetPetDetail {
  final PetRepository repository;
  GetPetDetail(this.repository);

  Future<Pet> call(String id) async {
    return await repository.getPetDetail(id);
  }
}
