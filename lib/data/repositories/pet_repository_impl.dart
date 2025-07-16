import '../../domain/entities/pet.dart';
import '../../domain/repositories/pet_repository.dart';
import '../datasources/pet_api_datasource.dart';

class PetRepositoryImpl implements PetRepository {
  final PetApiDatasource datasource;
  PetRepositoryImpl(this.datasource);

  @override
  Future<List<Pet>> getPets() async {
    return await datasource.fetchPets();
  }

  @override
  Future<List<Pet>> getPetsByCategory(String category) async {
    return await datasource.fetchPetsByCategory(category);
  }

  @override
  Future<Pet> getPetDetail(String id) async {
    return await datasource.fetchPetDetail(id);
  }
}
