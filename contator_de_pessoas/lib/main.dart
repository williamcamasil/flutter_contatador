import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Home()
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode Entrar!";

  void changePeople(int delta){
    //setState atualiza tela
    setState(() {
      _people += delta;  

      if(_people < 0){
        _infoText = "Mundo invertido?";
      }else if(_people <= 10){
        _infoText = "Pode Entrar!";
      }else{
        _infoText = "Lotado";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //O Stack permite sobrepor os widgets, nesse caso a imagem com a coluna
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/original.jpg",
          //Tipo de preenchimento na tela
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        //O column permite colocar um widget em cima do outro
        Column(
          //Alinhando o texto no centro da tela
          mainAxisAlignment: MainAxisAlignment.center,
          //children significa que pode colocar mais de um widget
          children: <Widget>[
            Text(
              "Pessoas: $_people", 
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            //O Row coloca o itens um ao lado do outro
            Row(
              //Alinhamento
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Padding da espaços nas laterais do widget, nesse caso para o FlatButton
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    //child significa que pode colocar apenas um widget
                    child: Text(
                      "+1",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 40.0, 
                        color: Colors.white 
                      ),
                    ),
                    //Função anonima
                    onPressed: () {
                      changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    //child significa que pode colocar apenas um widget
                    child: Text(
                      "-1",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 40.0, 
                        color: Colors.white 
                      ),
                    ),
                    //Função anonima
                    onPressed: () {
                      changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText, 
              style: TextStyle(color: Colors.white, 
                fontStyle: FontStyle.italic,
                fontSize: 30.0),
            ),
          ],
        ),
      ],
    );
  }
}