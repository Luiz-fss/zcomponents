import 'package:flutter/material.dart';

class ZItemTileOS extends StatefulWidget {

  final String oque;
  final String onde;
  final String porque;
  final String dataSla;
  final String codigo;
  final String prioridade;
  final bool visibilidade;
  final bool emAndamento;
  final Function onPressedFinalizar;
  final Function onTap;

  ZItemTileOS({
    this.oque,
    this.onde,
    this.porque,
    this.codigo,
    this.prioridade,
    this.dataSla,
    this.visibilidade = false,
    this.emAndamento =false,
    this.onPressedFinalizar = null,
    this.onTap
  });

  @override
  _ZItemTileOSState createState() => _ZItemTileOSState();
}

class _ZItemTileOSState extends State<ZItemTileOS> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: widget.onTap,
      child: new IntrinsicHeight(
        child: new Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 7,top: 7),
          child: Material(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),),
            child: new Container(
              padding: const EdgeInsets.only(top: 8,bottom: 8,left: 7,right: 7),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            new Container(
                                margin: EdgeInsets.only(
                                    left: 9.0, bottom: 6.0, top: 6.0),
                                child: retornaCodigo(widget.codigo)
                            ),
                            new Row(
                              children: [
                                new Container(
                                  child: Text("Prioridade: "),
                                ),
                                new Container(
                                  child: retornaPrioridade(widget.prioridade),
                                )
                              ],
                            ),
                          ],
                        ),

                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            new Expanded(
                              flex: 20,
                              child: new Container(
                                  margin: EdgeInsets.only(
                                      left: 9.0, right: 0.0, bottom: 4.0, top: 6.0),
                                  child: new Text(
                                      "Onde:"
                                  )
                              ),
                            ),
                            new Expanded(
                              flex: 25,
                              child: new Container(
                                margin: EdgeInsets.only(left: 4.0,),
                                child: retornaOnde(widget.oque),
                              ),
                            ),
                            espacoAdicional()
                          ],
                        ),

                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            new Expanded(
                              flex: 20,
                              child: new Container(
                                  margin: EdgeInsets.only(
                                      left: 9.0, right: 0.0, bottom: 4.0, top: 6.0),
                                  child: new Text(
                                      "O que:"
                                  )
                              ),
                            ),
                            new Expanded(
                              flex: 25,
                              child: new Container(
                                margin: EdgeInsets.only(left: 4.0,),
                                child: retornaOque(widget.oque),
                              ),
                            ),
                            retornaBotao()
                          ],
                        ),

                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            new Expanded(
                              flex:20,
                              child: new Container(
                                  margin: EdgeInsets.only(
                                      left: 9.0, right: 0.0, bottom: 4.0, top: 6.0),
                                  child: new Text(
                                      "Por que:"
                                  )
                              ),
                            ),
                            new Expanded(
                              flex: 25,
                              child: new Container(
                                margin: EdgeInsets.only(left: 4.0,),
                                child: retornaPorque(widget.porque),
                              ),
                            ),
                            espacoAdicional()
                          ],
                        ),

                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            new Expanded(
                              flex:20,
                              child: new Container(
                                  margin: EdgeInsets.only(
                                      left: 9.0, right: 0.0, bottom: 4.0, top: 6.0),
                                  child: new Text(
                                      "Data SLA:"
                                  )
                              ),
                            ),
                            new Expanded(
                              flex: 25,
                              child: new Container(
                                margin: EdgeInsets.only(left: 4.0,),
                                child: retornaDataSla(widget.dataSla),
                              ),
                            ),
                            espacoAdicional()
                          ],
                        ),



                      ],
                    ),
                  ),

                  retornaArrow()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget retornaOque (String oque){
    if(oque == null || oque.isEmpty){
      return Text("Motivo não encontrado");
    }else{
      return Text(
        widget.oque,overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
      );
    }
  }
  Widget retornaOnde (String onde){
    if(onde == null || onde.isEmpty){
      return Text("Local não encontrado",overflow: TextOverflow.ellipsis,);
    }else{
      return Text(
        widget.onde,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
      );
    }
  }
  Widget retornaPorque (String porque){
    if(porque == null || porque.isEmpty){
      return Text("Local não encontrado");
    }else{
      return Text(
        widget.porque,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
      );
    }
  }
  Widget retornaDataSla (String dataSla){
    if(dataSla ==null || dataSla.isEmpty){
      return new Text("Sem SLA");
    }else{
      return new Text(
        widget.dataSla,
          overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
      );
    }
  }
  Widget retornaCodigo (String codigo){
    if (codigo == null || codigo.isEmpty){
      return new Text("Código não identificado");
    }else{
      return Text(
        widget.codigo, overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 12.0,
            color: Color(0xFF000000),
            fontWeight: FontWeight.w600
        ),
      );
    }
  }
  Widget retornaPrioridade (String prioridade){
    if (prioridade == null || prioridade.isEmpty){
      return new Text("Não têm");
    }else{
      return Text(
        widget.prioridade,overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 12.0,
            color: Color(0xFF000000),
            fontWeight: FontWeight.w600
        ),
      );
    }
  }
  Widget retornaBotao(){
    if(widget.emAndamento){
      return  Expanded(
        flex: 30,
        child: Container(
            margin: EdgeInsets.only(left: 4.0,),
            height: 20,
            child: RaisedButton(
              child: Text("Finalizar",style: TextStyle(color: Colors.white),),
              onPressed: widget.onPressedFinalizar,
              color: Theme.of(context).primaryColor,
            )
        ),
      );

    }else{
      return Container();
    }
  }
  Widget espacoAdicional(){
    if(widget.emAndamento){
      return Expanded(
        flex: 30,
        child: Container(),
      );
    }else{
      return Container();
    }
  }
  Widget retornaArrow(){
    if(widget.visibilidade){
      return Container();
    }else{
      return Expanded(
        flex: 5,
        child: Container(
          margin: EdgeInsets.only(top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
      );
    }
  }
}
