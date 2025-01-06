

import 'package:flutter/material.dart';

enum Pages { pageHome, pageFavorita }



void goToHomePage(BuildContext context,pagina){
  if (Pages.pageHome== pagina){
    Colors.green;
    Pages.pageFavorita == Colors.white;
    Navigator.pushNamed(context,"/");
  }
}

void goToFavsPage(BuildContext context,pagina){
  if (Pages.pageFavorita == pagina){
    Colors.green;
    Pages.pageHome == Colors.white;
    Navigator.popAndPushNamed(context, "/telafavs");
    
  }
}

List<String>dados = [];

void salvarText(){
  TextEditingController controller = TextEditingController();
  if (controller.text.isNotEmpty) {
              dados.add(controller.text); // Salva o texto na lista
              controller.clear(); // Limpa o campo de texto
              print("Dados salvos:");
  }
}