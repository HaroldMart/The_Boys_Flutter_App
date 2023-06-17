import 'package:flutter/material.dart';

class MyLife extends StatelessWidget {
  const MyLife({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/theBoys1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            child: Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    children: [
                      Row(children: [
                        Text('Hola !!',
                            style: TextStyle(
                               decoration: TextDecoration.none,
                                fontSize: 30,
                                color: Colors.blue[500],
                                fontWeight: FontWeight.bold),),
                      ]),
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Divider(
                          color: Colors.grey[300],
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Esta serie en mi vida',
                            style: TextStyle(
                               decoration: TextDecoration.none,
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                'The Boys es una serie que me gusto mucho debido a la forma en que interactuan los personajes, y el como muestra la cruda realidad que muchas veces se tapan en otras peliculas o series, y te muestra como en realidad actuan las personas y los actores, en este caso los superheroes que delante de las personas parecen perfectos y muchas veces son los que mas tienen problemas que la mayoria. La serie revela la humanidad de los personajes, sin hacer que ninguno de ellos sea perfecto, sino, que sea humano...',
                                style: TextStyle(
                                   decoration: TextDecoration.none,
                                    fontSize: 15, color: Colors.grey[400]),
                              )),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ]
      )
    );
  }
}