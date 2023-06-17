import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

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
                  image: NetworkImage(
                      'https://theubj.com/wp-content/uploads/2022/04/The-Boys-Season-3-Prime.jpg'),
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
                        Text('The Boys',
                            style: TextStyle(
                                fontSize: 45,
                                color: Colors.blue[400],
                                fontWeight: FontWeight.bold)),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Icon(Icons.type_specimen),
                                ),
                                const Text('Serie'),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 17, bottom: 17),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const Icon(
                                        Icons.calendar_month_outlined),
                                  ),
                                  const Text('Julio 26, 2019'),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Icon(Icons.numbers_outlined),
                                ),
                                const Text('3 Temporadas'),
                              ],
                            )
                          ],
                        ),
                      ),
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
                            'Descripción',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                'The Boys está ambientada en un universo en el que los individuos superpoderosos son reconocidos como héroes por el público en general y trabajan para la poderosa corporación Vought International, que los comercializa y monetiza. Fuera de sus personajes heroicos, la mayoría son arrogantes, egoístas y corruptos. La serie se centra principalmente en dos grupos: los Siete, el principal equipo de superhéroes de Vought International, y The Boys (lit. Los muchachos) como protagonistas, vigilantes que buscan derribar a Vought y a los superhéroes corruptos. The Boys están liderados por Billy Butcher, que desprecia a todas las personas con superpoderes y en particular a los Siete, los cuales están liderados por el narcisista y violento Homelander. A medida que se produce un conflicto entre los dos grupos, la serie también sigue a los nuevos miembros de cada equipo: Hughie Campbell de The Boys, que se une a los vigilantes después de que su novia sea asesinada accidentalmente por A-Train, un miembro velocista de los Siete; y Annie January, cuyo nombre de superheroina es Starlight que se une recientemente de los Siete y es una joven esperanzada que se ve obligada a enfrentarse a la cruda verdad sobre los héroes que admira.',
                                style: TextStyle(
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
