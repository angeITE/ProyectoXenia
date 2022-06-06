
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'libreservice.dart';
import 'mostrarInfoEstado.dart';
import 'package:provider/provider.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mercadoData = Provider.of<LibreService>(context);
    if(mercadoData.listEstado.isEmpty){
      return Container(
        color: Colors.redAccent,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.yellowAccent,)
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(" EL COVID - CORONAVIRUS ", textAlign: TextAlign.center,),
        backgroundColor: const Color.fromRGBO(57, 89, 27, 1),//rgb(57, 89, 27,4) verde caribe
      ),
      backgroundColor: const Color.fromRGBO(250, 235, 215,2),//rgb(250, 235, 215) AntiqueWhite
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 7),
              child: Text(" a continuacion se muestran algunos de los estados afectados por el virus \"covid-19\", seleccione uno para ver mas detalles."),
            ),
            SizedBox(
              height: 440,
              width: 300,
              child: ListView.builder(
                itemCount: mercadoData.listEstado.length,
                itemBuilder: (_, index) {
                            final item = mercadoData.listEstado[index];
                            return Card(
                              color: const Color.fromRGBO(173, 216, 230, 1),//rgb(173, 216, 230) azul claro
                              child: ListTile(
                                title: Text(
                                  item.name,
                                  style: TextStyle(
                                      color: Colors.blueGrey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12
                                      ),
                                      textAlign: TextAlign.center,
                                ),
                                //Este boton muestra una showDialog, que funciona como previsualizacion (solo muestra las notas)
                                leading: CupertinoButton(onPressed: () { 
                                      showDialog(context: context, 
                                      builder: (context) {
                                      return AlertDialog(
                                      title: Text(item.name),
                                      content: Text(item.notes, overflow: TextOverflow.ellipsis,maxLines: 5,),
                                      actions: [
                                        TextButton(onPressed: () { 
                                          Navigator.pop(context); 
                                        }, child: const Text("cerrar")),
                                        TextButton(onPressed: () { 
                                          Route route = MaterialPageRoute(builder: (_) => MostrarInfoEstado(index: index));
                                          Navigator.pushReplacement(context, route);
                                        }, child: Text("ver mas", style: TextStyle(color: Colors.blueAccent[800]),))
                                      ],
                                        );
                                      });
                                 },
                                child: const Icon(Icons.info_outline)),
                                //Este boton manda a la pantalla "mostrarInfoEstado"
                                trailing: CupertinoButton(onPressed: (() {
                                  Route route = MaterialPageRoute(builder: (_) => MostrarInfoEstado(index: index));
                                  Navigator.push(context, route);
                                }),
                                child: const Icon(Icons.arrow_forward_ios_outlined),
                                ),
                                onTap: () {
                                  
                                },
                              ),
                            );
                          }
                          ),
            ),
          ],
        ),
      ),
    );

  }
}