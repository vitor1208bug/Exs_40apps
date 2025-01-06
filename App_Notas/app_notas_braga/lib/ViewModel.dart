import 'package:app_notas_braga/ui/widgets/note.dart';
import 'package:flutter/material.dart';

class HomePageState extends ChangeNotifier {
  List<Widget> allNotes = List.generate(
    5,
    (index) => Note(
      title: index.toString(),
      content: 'Este é o indice $index',
    ),
  );
  Map<String, List<Widget>> categories = {};
  //Criar funcionalidades:
  // -criar categorias para as notas(Estrela/favoritos é uma delas)
  // -Adicionar notas nessas categorias

  void createCategory({required String name}){
    categories[name] = [];
    notifyListeners();
  }

  void moveCategory({required String? oldCategory, required String newCategory,required Widget note}){
    if (oldCategory !=null) {
      categories[oldCategory]!.remove(note);
      categories[newCategory]!.add(note);
    }else{
      categories[newCategory]!.add(note);
    }
  }

  void addItem({required Widget note, String? category}) {
    allNotes.add(note);

    categories[category]?.add(note);

    notifyListeners();
  }

  void removeItem({required Widget note, String? category}) {
    allNotes.removeWhere((item) => item == note);

    categories[category]?.removeWhere((item) => item == note);

    notifyListeners();
  }

  void editNote({
    required Widget oldNote,
    required Widget newNote,
    String? category,
  }) {
    categories[category]
        ?.insert(categories[category]!.indexOf(oldNote), newNote);
    categories[category]?.remove(oldNote);

    allNotes.insert(allNotes.indexOf(oldNote), newNote);
    allNotes.remove(oldNote);

    notifyListeners();
  }
  List<Widget> favorites = [];

  bool isFavorite ({required Widget note}){
    return favorites.contains(note)? true: false;
  }

  void addFavorite({required Widget note}){
    favorites.add(note);
    notifyListeners();
  }

  void removeFavorite({required Widget note}){
    favorites.removeWhere((item)=> item==note);
    notifyListeners();
  }

}
