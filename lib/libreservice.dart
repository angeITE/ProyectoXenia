import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'estado_info.dart';
import 'infoactual.dart';
class LibreService extends ChangeNotifier {
  final _baseUrl = 'api.covidtracking.com';

  List<InfoActual> listInfoEstado = [];
  List<Estadoinfo> listEstado = [];
  List<String> codigo = [
    'ak','al','ar','as','az',"ca","co","ct","dc","de","fl","ga","gu","hi","ia","id","il","in","ks","ky","la","ma","md","me","mi","mn","mo","mp","ms","mt","nc","nd","ne","nh","nj","nm","nv","ny","oh","ok","or","pa","pr","ri","sc","sd","tn","tx","ut","va","vi","vt","wa","wi","wv","wy"
    ];

  LibreService(){
    getState();
    getDataStates();
  }
  getState() async{
  
   for(int i=0;i<codigo.length;i++)
   {
    
    final url =Uri.https(_baseUrl, '/v1/states/${codigo[i]}/info.json');
    final response = await http.get(url);
    final resSitio = Estadoinfo.fromJson(response.body);
    listEstado.add(resSitio);
    notifyListeners();
   }
  }
  getDataStates() async {
    for(int x=0;x<codigo.length;x++)
   {
    final url = Uri.https(_baseUrl, '/v1/states/${codigo[x]}/current.json');
    final response = await http.get(url);
    final resSitio = InfoActual.fromJson(response.body);
    listInfoEstado.add(resSitio);
    notifyListeners();
   }
  }
}