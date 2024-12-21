import 'package:app_notas_braga/ViewModel.dart';
import 'package:app_notas_braga/ui/widgets/note.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OverlayDialog extends StatefulWidget {
  TextEditingController? titleController;
  TextEditingController? contentController;
  final String overlayTitle;
  bool isEdit;
  Widget? editingNote;
  OverlayDialog({
    required this.overlayTitle,
    this.titleController,
    this.contentController,
    this.isEdit = false,
    this.editingNote,
    super.key,
  }) {
    titleController ??= TextEditingController();
    contentController ??= TextEditingController();
  }

  @override
  State<OverlayDialog> createState() => _OverlayDialogState();
}

class _OverlayDialogState extends State<OverlayDialog> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<HomePageState>();
    return AlertDialog(
      title: Text(widget.overlayTitle),
      content: Column(
        children: [
          TextField(
            controller: widget.titleController,
            decoration: InputDecoration(hintText: "Title"),
          ),
          TextField(
            controller: widget.contentController,
            decoration: InputDecoration(hintText: "Content"),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            widget.isEdit
                ? appState.editNote(
                    oldNote: widget.editingNote!,
                    newNote: Note(
                      title: widget.titleController!.text,
                      content: widget.contentController!.text,
                    ))
                : appState.addItem(
                    Note(
                      title: widget.titleController!.text,
                      content: widget.contentController!.text,
                    ),
                  );
            Navigator.of(context).pop();
          },
          child: Text('Concluido'),
        )
      ],
    );
  }
}
