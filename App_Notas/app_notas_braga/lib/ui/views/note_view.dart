import 'package:app_notas_braga/ViewModel.dart';
import 'package:app_notas_braga/ui/widgets/note.dart';
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
          title: Text('*categoria*'),
          actions: [
            IconButton(
              //Colocar para mudar o simbolo para um estrela preenchida e chamar a função de adicionar as favoritas.
              onPressed: () {},
              icon: Icon(Icons.star_border),
            ),
            IconButton(
              //Criar um Input de cascata com as opções de remover, adicionar a categoria e etc...
              onPressed: () {},
              icon: Icon(Icons.more_vert_rounded),
            )
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
                maxLines:1
              ),
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
