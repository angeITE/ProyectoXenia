import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'libreservice.dart';

class MostrarInfoEstado extends StatelessWidget {
  final int index;
   const MostrarInfoEstado({Key? key,required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mostrarEstado = Provider.of<LibreService>(context);
    final mostrarNombre = Provider.of<LibreService>(context);
    final nombre = mostrarNombre.listEstado[index];
    final item = mostrarEstado.listInfoEstado[index];
    dynamic lastUpdate = item.lastUpdateEt;
    //cambia el valor de la variables en caso de que sean null
    lastUpdate ??= "07/marzo/2021";
    // ignore: prefer_conditional_assignment
    dynamic twitter, positiveTestsViral, negativeTestsViral, hospitalized, death;
    //condicionales en caso de que alguna cifra sea null
    if(item.positiveTestsViral.toString() == "null")
    {
      positiveTestsViral = "se desconoce cuantas";
    }else{
      positiveTestsViral = item.positiveTestsViral;
    }
    if(item.negativeTestsViral.toString() == "null")
    {
      negativeTestsViral = "no se tiene una cifra de cuantas";
    }else{
      negativeTestsViral = item.negativeTestsViral;
    }
    if(item.hospitalized.toString() == "null")
    {
      hospitalized = "0";
    }
    else{
      hospitalized = item.hospitalized;
    }
    if(item.death.toString()=="null")
    {
      death = "0 hasta el momento";
    }
    else{
      death = item.death;
    }
    //condicional en caso de que la variable twitter null
    if(nombre.twitter == "null")
    {
      twitter = "no existe una cuenta activa"; 
    }else{
      twitter = nombre.twitter;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Informacion del estado de ${nombre.name}", style: const TextStyle(fontSize: 25),maxLines: 2,),
        centerTitle: true,
        toolbarHeight: 75,
         backgroundColor: const Color.fromRGBO(57, 89, 27, 1),//rgb(57, 89, 27,4) verde caribe
        ),
      backgroundColor: const Color.fromRGBO(173, 216, 230, 1),//rgb(173, 216, 230) azul claro,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              style: ListTileStyle.drawer,
              //texto de inicio con informacion relevante o remarcando los datos mas importantes
              title: Text(
                    "El numero de casos positivos esta cerca de los ${item.positive}, las pruebas hechas superan las ${item.totalTestResults}, de las cuales $positiveTestsViral"
                    " fueron positivas y $negativeTestsViral fueron negativas. \n La cantidad de personas hospitalizadas que llega a las $hospitalized" 
                    " personas registradas, por otro lado, el numero de muertos esta cerca de los $death. \n Estos datos fueron actualizados por utlima vez el $lastUpdate.",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
              ),
              subtitle: Text("\n Ah continuacion se muestran algunas notas del estado de ${nombre.name}, conocido tambien por su abreviatura ${item.state}", textAlign: TextAlign.center,),
            ),
            //linea inicial que funciona como separador y tambien como puntos de referencia del SinlgeChildScrollView
            Container(height: 3, width: double.maxFinite, color: const Color.fromRGBO(57, 89, 27, 1),),//const Color.fromRGBO(57, 89, 27, 1),//rgb(57, 89, 27,4) verde caribe
            SizedBox(
              height: 180,
              width: 340,
              child: SingleChildScrollView(
                child: Text(nombre.notes, textAlign: TextAlign.justify,),
                ),
            ),
            //linea inicial que funciona como separador y tambien como puntos de referencia del SingleChildScrollView
            Container(height: 3, width: double.maxFinite, color: const Color.fromRGBO(57, 89, 27, 1),),//const Color.fromRGBO(57, 89, 27, 1),//rgb(57, 89, 27,4) verde caribe
            //apartado de contacto y liga para su pagina web
            ListTile(
              title: const Text("Para contacto o mayor informacion: ", textAlign: TextAlign.center,),
              subtitle: Column(
                children: [
                  //Linkify(text: nombre.notes, onOpen: _onOpen,)
                  Text("Twitter: \n $twitter", textAlign: TextAlign.center,style: const TextStyle(color: Colors.grey),),
                  Linkify(text: "Pagina principal: \n${nombre.covid19Site}", onOpen: _onOpen, textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  //metodo que nos redirige hacia la pagina web
  void _onOpen(LinkableElement link) async{
if(await canLaunchUrlString(link.url)){
  await launchUrlString(link.url);
}else{
  throw 'No se pudo acceder a $link';
}}
}