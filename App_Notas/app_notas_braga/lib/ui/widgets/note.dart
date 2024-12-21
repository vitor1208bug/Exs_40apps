// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app_notas_braga/ViewModel.dart';
import 'package:app_notas_braga/ui/widgets/overlay.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Note extends StatefulWidget {
  String title;
  String content;

  Note({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<HomePageState>();

    TextEditingController titleController =
        TextEditingController(text: widget.title);
    TextEditingController contentController =
        TextEditingController(text: widget.content);
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return OverlayDialog(
              isEdit: true,
              editingNote: widget,
              overlayTitle: 'Edit ${widget.title} note',
              titleController: titleController,
              contentController: contentController,
            );
          },
        );
      },
      onLongPress: () {
        appState.removeItem(widget);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(color: const Color.fromARGB(168, 243, 20, 20)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(widget.content),
          ],
        ),
      ),
    );
  }
}
