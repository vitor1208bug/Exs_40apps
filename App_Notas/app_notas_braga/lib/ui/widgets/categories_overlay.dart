import 'package:app_notas_braga/ViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesOverlay extends StatefulWidget {
  const CategoriesOverlay({super.key});

  @override
  State<StatefulWidget> createState() => _CategoriesOverlay();
}

class _CategoriesOverlay extends State<CategoriesOverlay> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<HomePageState>();
    return AlertDialog(
      title: Text('Categorias'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (String category in appState.categories.keys)
            TextButton(
              onPressed: (){},
              child: Text(category),
            )
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                TextEditingController categoryName = TextEditingController();
                return AlertDialog(
                  title: Text('Create a new category'),
                  content: Column(
                    children: [
                      TextFormField(
                        controller: categoryName,
                      )
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancelar'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        appState.createCategory(name: categoryName.text);
                        print(appState.categories);
                        Navigator.pop(context);
                      },
                      child: Text('Concluido'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Create new'),
        ),
      ],
    );
  }
}
