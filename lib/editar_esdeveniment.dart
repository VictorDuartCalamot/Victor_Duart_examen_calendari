import 'package:flutter/material.dart';

class EditarEsdevenimentForm extends StatefulWidget {
  const EditarEsdevenimentForm({Key? key}) : super(key: key);

  @override
  State<EditarEsdevenimentForm> createState() => _EditarEsdevenimentFormState();
}

class _EditarEsdevenimentFormState extends State<EditarEsdevenimentForm> {
  final _clauFormulari = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edició esdeveniment"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Data inici"),
                ),
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Data fi"),
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
            },
            child: const Text('Hora'),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "Títol"),
          ),
          Expanded(
            child: TextFormField(
              maxLines: null,
              expands: false,
              decoration: const InputDecoration(
                labelText: "Descripció",
                alignLabelWithHint: true,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/');
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Afegint esdeveniment!')));
        },
        tooltip: 'Afegir esdeveniment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class EsdevenimentNou{
  static final EsdevenimentNou _Esdeveniment = EsdevenimentNou._internal();

  factory EsdevenimentNou(){
    return _Esdeveniment;
  }

  EsdevenimentNou._internal():_titol = 'a';

  String _titol;




}