import 'package:app_notas_braga/ViewModel.dart';
import 'package:app_notas_braga/ui/widgets/categories_overlay.dart';
import 'package:app_notas_braga/ui/widgets/note.dart';
import 'package:app_notas_braga/ui/widgets/remove_overlay.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoteView extends StatefulWidget {
  String title;
  String content;
  Widget note;

  NoteView(
      {super.key,
      required this.title,
      required this.content,
      required this.note});

  @override
  State<StatefulWidget> createState() => _NoteView();
}

class _NoteView extends State<NoteView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController =
        TextEditingController(text: widget.title);
    TextEditingController contentController =
        TextEditingController(text: widget.content);

    final theme = Theme.of(context);
    var appState = context.watch<HomePageState>();
    bool isFavorite = appState.favorites.contains(widget.note);
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        appState.editNote(
          oldNote: widget.note,
          newNote: Note(
            title: titleController.text,
            content: contentController.text,
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CategoriesOverlay();
                  },
                );
              },
              child: Text('Categoria')),
          actions: [
            IconButton(
              //Colocar para mudar o simbolo para um estrela preenchida e chamar a função de adicionar as favoritas.
              onPressed: () {
                isFavorite
                    ? appState.removeFavorite(note: widget.note)
                    : appState.addFavorite(note: widget.note);
              },
              icon: isFavorite ? Icon(Icons.star) : Icon(Icons.star_border),
            ),
            PopupMenuButton(
              itemBuilder: (context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text('Remove'),
                  onTap: () {
                    showDialog(context: context, builder: (context) => RemoveOverlay(note: widget.note),);
                  },
                ),
                PopupMenuItem(child: Text('opção 2')),
                PopupMenuItem(child: Text('opção 3')),
              ],
            ),
            //Criar um Input de cascata com as opções de remover, adicionar a categoria e etc...
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                  controller: titleController,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge,
                  maxLines: 1),
              Container(
                height: 15,
              ),
              TextFormField(
                controller: contentController,
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
