import 'dart:math';

import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({Key? key}) : super(key: key);

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {

  final _controller = PageController(
    viewportFraction: 0.6
  );

  double _currenPage=0.0;

  void _listener(){
    setState(() {
      _currenPage= _controller.page!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(_listener);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _opacidad;
    List<String> textos = [
      'esta aplicacion va a quedar una chimba mk',
      'nur va a quedar con la geta cayada porque soy una chimba de programadora guevon',
      'no se que putas mas ponerle a esta maricada pero aja, dios quiera todo se solucione y tenga imaginacion alv'
    ];

    return Container(
      child: PageView.builder(
        controller: _controller,
          itemCount: textos.length,
          itemBuilder: (_,i){
          //debugPrint( _currenPage.toString());
            if (i == _currenPage){
              _opacidad =1;
              return Transform.scale(
                scaleX: 9,
                scaleY: 1.5,
                child: _page1(textos[i], _opacidad)
              );}
              else if(i< _currenPage){
              _opacidad = max(1 - (_currenPage - i), 0.5);
              return Transform.scale(
                  scale: max(2 - (_currenPage - i), 2),
                  child: _page1(textos[i], _opacidad)
              );
            }
              else{
              _opacidad = max(1 - ( i- _currenPage), 0.5);
              return Transform.scale(
                  scale: max(2 - ( i- _currenPage), 2),
                  child: _page1(textos[i], _opacidad)
              );
            }
            }
          ),
    );
  }
  _page1(String textos, double _opacidad){
    return Center(
      child: Container(
        width: 400,
          height: 400,
          color: Colors.amberAccent.withOpacity(_opacidad),
          margin: EdgeInsets.all(40),
          child: RichText(
            text: TextSpan(text: textos, style: TextStyle(
              fontFamily: 'Raleway', fontSize: 30, color: Colors.white.withOpacity(_opacidad),
            )),
          )
      )
    );
  }
}

//https://www.youtube.com/watch?v=tiOCdm3QzAE&t=3s&ab_channel=EnriqueMarquez