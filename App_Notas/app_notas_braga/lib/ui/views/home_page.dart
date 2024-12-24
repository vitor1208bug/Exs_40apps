import 'package:app_notas_braga/ViewModel.dart';
import 'package:app_notas_braga/ui/widgets/overlay.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  void _showOverlay() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return OverlayDialog(
          overlayTitle: 'Add new note',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appState = context.watch<HomePageState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notas'),
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        primary: false,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: appState.notas.length,
        itemBuilder: (context, index) {
          return appState.notas[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showOverlay,
        child: Icon(Icons.add),
      ),
    );
  }
}
