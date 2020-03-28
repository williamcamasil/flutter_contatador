import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    //O Stack permite sobrepor os widgets, nesse caso a imagem com a coluna
    home: Stack(
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
              "Pessoas: 0", 
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

                    },
                  ),
                ),

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

                    },
                  ),
                ),
              ],
            ),

            Text(
              "Pode Entrar!", 
              style: TextStyle(color: Colors.white, 
                fontStyle: FontStyle.italic,
                fontSize: 30.0),
            ),


          ],
        ),
      ],
    )
  ));
}