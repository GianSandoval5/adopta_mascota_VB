import '../../domain/entities/pet.dart';

class PetApiDatasource {
  Future<List<Pet>> fetchPets() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return _mockPets;
  }

  Future<List<Pet>> fetchPetsByCategory(String category) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockPets.where((pet) => pet.category == category).toList();
  }

  Future<Pet> fetchPetDetail(String id) async {
    await Future.delayed(const Duration(milliseconds: 400));
    return _mockPets.firstWhere((pet) => pet.id == id);
  }
}

final List<Pet> _mockPets = [
  Pet(
    id: '1',
    name: 'Max',
    category: 'Perro',
    imageUrl:
        'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg',
    description: 'Max es un perro juguetón y amigable, ideal para familias.',
    age: 3,
    gender: 'Macho',
    location: 'Piura',
    gallery: [
      'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg',
      'https://images.pexels.com/photos/458799/pexels-photo-458799.jpeg',
    ],
  ),
  Pet(
    id: '2',
    name: 'Luna',
    category: 'Gato',
    imageUrl:
        'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
    description:
        'Luna es una gatita curiosa y cariñosa, busca un hogar tranquilo.',
    age: 2,
    gender: 'Hembra',
    location: 'Piura',
    gallery: [
      'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
      'https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg',
    ],
  ),
  Pet(
    id: '3',
    name: 'Rocky',
    category: 'Perro',
    imageUrl:
        'https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg',
    description: 'Rocky es un perro guardián, leal y protector.',
    age: 5,
    gender: 'Macho',
    location: 'Piura',
    gallery: [
      'https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg',
      'https://images.pexels.com/photos/674574/pexels-photo-674574.jpeg',
    ],
  ),
  Pet(
    id: '4',
    name: 'Mia',
    category: 'Gato',
    imageUrl:
        'https://images.pexels.com/photos/320014/pexels-photo-320014.jpeg',
    description:
        'Mia es una gata elegante y tranquila, perfecta para compañía.',
    age: 4,
    gender: 'Hembra',
    location: 'Piura',
    gallery: [
      'https://images.pexels.com/photos/320014/pexels-photo-320014.jpeg',
      'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg',
    ],
  ),
];
