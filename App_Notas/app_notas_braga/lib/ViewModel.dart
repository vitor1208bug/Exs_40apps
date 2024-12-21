import 'package:app_notas_braga/ui/widgets/note.dart';
import 'package:flutter/material.dart';

class HomePageState extends ChangeNotifier {
  List<Widget> notas = List.generate(5, (index) => Note(title: index.toString(), content: 'Este é o indice $index'));

  
  void addItem(Widget note){

    notas.add(note);

    notifyListeners();
  }

  void removeItem(Widget note){
    notas.removeWhere((item)=> item==note);
    notifyListeners();
  }

  void editNote({required Widget oldNote, required Widget newNote}){
    notas.insert(notas.indexOf(oldNote), newNote);
    notas.remove(oldNote);
    notifyListeners();
  }  
}