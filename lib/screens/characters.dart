import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Character extends StatefulWidget {
  const Character({super.key});

  @override
  State<Character> createState() => _CharacterState();
}

class _CharacterState extends State<Character> {
  final characters = [
    SerieCharacter(
        name: 'Soldier Boy',
        image:
            'https://www.cinemaedintorni.com/wp-content/uploads/2023/04/gen-v-il-soldatino-di-jensen-ackles-apparira-nello-spin-off-di-the-boys.webp',
        details:
            'Fue el primer y más grande superhéroe de Estados Unidos antes de Homelander y el exlíder del equipo de superhéroes Payback. Cuando era joven, Soldier Boy ayudó al bien a triunfar sobre el mal en la Segunda Guerra Mundial. Sin embargo, no está claro cuánto de eso es cierto, ya que The Legend afirmó que su participación en la guerra fue propaganda de Vought. Con su equipo de superhéroes Payback a su lado, se dice que luchó por la libertad y la justicia para todos hasta su desaparición durante una operación militar fallida en Nicaragua, y la historia de portada es que sacrificó heroicamente su propia vida para salvar a Estados Unidos. de una bomba nuclear. Fusión de la planta de energía en 1984.',
        type: 'Antagonista'),
    SerieCharacter(
        name: 'Starlight',
        image:
            'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Starlight.The-Boys.webp',
        details:
            'Annie January es tan sensata y sincera como puede ser, la chica de al lado con superpoderes. Y como Starlight, "La defensora de Des Moines", todo lo que siempre ha querido hacer es salvar el mundo, y aunque mucha gente dice que es un eslogan cursi, en realidad lo dice en serio. Entonces, cuando es seleccionada para unirse a The Seven, todos los sueños que alguna vez tuvo sobre ella se hacen realidad. Sin embargo, ese sueño se convierte en su peor pesadilla cuando esta joven del Medio Oeste llega a Nueva York y descubre que el viejo adagio es cierto: nunca conozcas a tus héroes.',
        type: 'Principal'),
    SerieCharacter(
        name: 'Homelander',
        image:
            'https://observer.com/wp-content/uploads/sites/2/2020/09/mv5bowjmzda5yzytyzhkns00odbjlwjjymityzmwodjhmdlhyze2xkeyxkfqcgdeqxvymtq2ode0nda._v1_sx1777_cr001777785_al_.jpg?quality=80',
        details:
            'Homelander es el líder de The Seven, el Supe más fuerte del mundo y el archienemigo de Billy Butcher, el líder de The Boys. Con rostro de estrella de cine y el poder de un dios, Homelander es considerado el mayor superhéroe vivo. No solo puede volar, sino que posee un súper oído, una súper fuerza y ​​una súper durabilidad mucho más allá de la mayoría de los súper, y puede ver a través de cualquier cosa excepto zinc con su visión de rayos X, además de poder quemar y cortar cosas disparando. un rayo de color rojo de energía térmica de sus ojos. En apariencia, es afable, modesto y sincero; el último Boy Scout, un tesoro americano, un patriota temeroso de Dios, pero como simples mortales; Incluso los superhéroes tienen secretos.',
        type: 'Antagonista'),
    SerieCharacter(
        name: 'Hughie',
        image:
            'https://www.looper.com/img/gallery/how-hughie-from-the-boys-should-really-look/l-intro-1603561090.jpg',
        details:
            'Es miembro de The Boys, un grupo de vigilantes anti-superhéroes cuyo objetivo final es acabar con Vought International y los Supes corruptos que poseen por cualquier medio necesario. No hace mucho tiempo, Hughie llevaba una vida bastante normal y mediocre. Era un chico de buenos modales con un trabajo aburrido en una pequeña tienda de electrónica, que todavía vive en casa con su padre Hugh Campbell Sr. en la misma habitación en la que creció. La única luz en su vida es el amor de su vida. . : su novia su Robin. Es decir, hasta que un veloz superhéroe llamado A-Train empala a Robin, destripándola y matándola en el impacto. Desesperado por venganza, Hughie es reclutado por el vigilante anti-Super Billy Butcher y su mundo se pone patas arriba cuando se encuentra atrapado en medio de una guerra contra los superhéroes, quienes, como resultado, no son ni super ni heroicos.',
        type: 'Protagonista'),
    SerieCharacter(
        name: 'Billy Butcher',
        image:
            'https://www.comingsoon.net/wp-content/uploads/sites/3/2020/08/the-boys-season-2-karl-urban-billy-butcher-social.jpg?w=800',
        details:
            'Billy Butcher es tan encantador como astuto. Es una fuerza de la naturaleza, que puede convencer a casi cualquier persona de cualquier cosa, ya sea con una sonrisa o con la fuerza bruta, o a veces con ambas. Está consumido por una misión en la vida: destruir a los superhéroes. Pero esta vendetta personal está alimentada por su odio por un Supe en particular: Homelander. Butcher está decidido a vengarse de Homelander, sin importar el costo, y no dejará que nada ni nadie se interponga en su camino. Tras la revelación de que Becca está viva, Butcher se enfrenta a una decisión difícil cuando debe elegir entre buscar a Becca o proteger la seguridad de los chicos. Es interpretado por el actor neozelandés Karl Urban cuando es adulto y por Luca Villacis cuando es adolescente.',
        type: 'Protagonista'),
    SerieCharacter(
        name: 'Stormfront',
        image:
            'https://images.immediate.co.uk/production/volatile/sites/3/2020/08/Screen-Shot-2020-08-19-at-11.19.18-dfffa50.jpg?quality=90&resize=620,414',
        details:
            'Ella era una superheroína que reemplazó a Translucent como miembro de The Seven. Stormfront se unió a los Siete después de que la muerte de Translucent se hizo pública, y fue brevemente un rival de Homelander antes de que los dos se convirtieran en amantes. Era experta en el uso de las redes sociales y tenía muchos seguidores en línea. Aunque lo negó en público, Stormfront era una nazi encubierta que usó su posición como miembro de los Siete para promover su agenda supremacista blanca. Le gustaba mucho matar a cualquiera que no fuera blanco, lo que se muestra cuando masacra un bloque de apartamentos completo que contiene residentes negros mientras persigue a Kenji Miyashiro.',
        type: 'Antagonista'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: characters.length,
        padding: const EdgeInsets.only(top: 20, left: 10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(characters[index].image),
            title: Text(characters[index].name),
            textColor: Colors.grey[800],
            horizontalTitleGap: 30,
            subtitle: Text(characters[index].type),
            minLeadingWidth: 95,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsCharacter(
                    character: characters[index],
                  ),
                ),
              );
            },
          );
        });
  }
}

class DetailsCharacter extends StatelessWidget {
  const DetailsCharacter({required this.character});

  final SerieCharacter character;

  @override
  Widget build(BuildContext context) {
    final image = character.image;
    final name = character.name;
    final details = character.details;
    final type = character.type;

    return Scaffold(
        body: SizedBox(
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
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
                height: 530,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(children: [
                        Text(name,
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
                                  child: const Icon(Icons.merge_type),
                                ),
                                Text(type),
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
                                details,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[400]),
                              )),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}

class SerieCharacter {
  String name;
  String image;
  String details;
  String type;

  SerieCharacter(
      {required this.name,
      required this.image,
      required this.details,
      required this.type});
}
