import 'package:flutter/material.dart';
import 'dart:math';


class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}



class _frasesState extends State<frases> {
  //back do app
  //criar um array de frases para ser exibida de forma aleatórias

  var _frases = [
    'O miseravel é um gênio!','Freezaaaa!!, você matou o kuririn!!, quem poderar nos salvar?? Eu, o chapolin Colorado!!','É mais de oito Mill','O melhor guerreiro, não é aquele que sempre ganha mas, aquele que sempre perde.','Cuidado!!, a tropa chapolin não brinca em serviço','Será que eu vou ter que chamar a tropa chapolin??','Dilema da tropa, não deixe de comer uma pizza na sexta','Minhas anteninhas estão detectando a presença do inimigo','A perfeição é uma ilusão, nunca deixe de buscar o aperfeiçoamento','Não desista, mesmo quando parece impossível. É isso que nos faz mais fortes.','O que é ? o que é ? É vermelho e parece uma formiga,Eu o Chapolin Colorado!!  '
  ];

  var _frasesGerada= 'Clique Abaixo! para gerar uma frase!';// o text depois da imagem da logo para gerar a função _gerarfrase

  void _gerarFrase(){//função de gerar frase aleatória
    //vai pegar de forma aleatória sorteado nas posições//

    var numeroSorteado = Random().nextInt(_frases.length);
    //random é um import do tipo 'dart:math';
    //romdom é responsavel por exibir o array de forma  aleatória
    setState(() {
      _frasesGerada=_frases[numeroSorteado];
    });

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('  Melhores Memes da Tropa'),
        centerTitle: true,
        actions:<Widget>[
          Icon(Icons.search),Icon(Icons.notifications),Icon(Icons.settings)
        ],


        backgroundColor: Colors.transparent,
        elevation: 30,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 176, 106, 231),
                Color.fromARGB(255, 166, 122, 232),
                Color.fromARGB(255, 131, 123, 232),
                Color.fromARGB(255, 104, 132, 231),
              ],
                  transform: GradientRotation(90)
              )
          ),

        ),

        leading:  Icon((Icons.menu),
        ),






      ),
      body: Center( //centraiza o body//
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 176, 106, 231),
                Color.fromARGB(255, 166, 122, 232),
                Color.fromARGB(255, 131, 123, 232),
                Color.fromARGB(255, 104, 132, 231),
              ],)
          ),
          padding: EdgeInsets.all(16), //espaçamento appbar e body
          child: Column( //verticalizar os elementos//
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //Spacearond == entre os espaços//
            crossAxisAlignment: CrossAxisAlignment.center,
            //centralizar o espaçamento
            children: <Widget>[
              Image.asset('image/logo.png'), //logooooooooooooooooooo
              Text(_frasesGerada,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontWeight: FontWeight.bold

                ),
              ),


              // ),
              ElevatedButton( //botão para gerar frases.

                onPressed: _gerarFrase,
                child: Text('Melhores Frases ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.red,


                    alignment: Alignment.center,
                    shape: StadiumBorder(),
                    elevation: 40,
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: Color.fromARGB(255, 100, 210, 150)

                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}


