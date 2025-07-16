import 'package:flutter/material.dart';
import '../../domain/entities/pet.dart';
import '../../domain/usecases/get_pets.dart';
import '../../domain/usecases/get_pets_by_category.dart';
import '../../domain/usecases/get_pet_detail.dart';
import '../../data/datasources/pet_api_datasource.dart';
import '../../data/repositories/pet_repository_impl.dart';

class PetProvider extends ChangeNotifier {
  final GetPets getPets;
  final GetPetsByCategory getPetsByCategory;
  final GetPetDetail getPetDetail;

  List<Pet> pets = [];
  List<Pet> filteredPets = [];
  Pet? selectedPet;
  String selectedCategory = 'Todos';
  bool isLoading = false;

  PetProvider()
    : getPets = GetPets(PetRepositoryImpl(PetApiDatasource())),
      getPetsByCategory = GetPetsByCategory(
        PetRepositoryImpl(PetApiDatasource()),
      ),
      getPetDetail = GetPetDetail(PetRepositoryImpl(PetApiDatasource())) {
    fetchPets();
  }

  Future<void> fetchPets() async {
    isLoading = true;
    notifyListeners();
    pets = await getPets();
    filteredPets = pets;
    isLoading = false;
    notifyListeners();
  }

  Future<void> filterByCategory(String category) async {
    selectedCategory = category;
    isLoading = true;
    notifyListeners();
    if (category == 'Todos') {
      filteredPets = pets;
    } else {
      filteredPets = await getPetsByCategory(category);
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> selectPet(String id) async {
    isLoading = true;
    notifyListeners();
    selectedPet = await getPetDetail(id);
    isLoading = false;
    notifyListeners();
  }

  void clearSelectedPet() {
    selectedPet = null;
    notifyListeners();
  }
}
