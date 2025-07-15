import 'package:flutter/material.dart';
import 'manhua_detail_screen.dart'; // Asegúrate de tener este archivo
import 'main.dart'; // Tu pantalla de login

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> manhuaData = [
    {
      'image': 'assets/imagenes/popular1.jpg',
      'nombre': 'Nigromante, la Llegada del Desastre',
      'capitulos': [
        {'nombre': 'Cap. 1','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-1/',},
        {'nombre': 'Cap. 2', 'url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-2/',},
        {'nombre': 'Cap. 3','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-3/',},
        {'nombre': 'Cap. 4','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-4/',},
        {'nombre': 'Cap. 5','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-5/',},
        {'nombre': 'Cap. 6','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-6/',},
        {'nombre': 'Cap. 7','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-7/',},
        {'nombre': 'Cap. 8','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-8/',},
        {'nombre': 'Cap. 9','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-9/',},
        {'nombre': 'Cap. 10','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-10/',},
        {'nombre': 'Cap. 11','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-11/',},
        {'nombre': 'Cap. 12','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-12/',},
        {'nombre': 'Cap. 13','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-13/',},
        {'nombre': 'Cap. 14','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-14/',},
        {'nombre': 'Cap. 15','url':'https://olympusscan.mundoalterno.org/manga/ni1rom4nte-l4-lleg4d4-d3l-desastr3/capitulo-15/',},
      ],
      'descripcion':
          'El juego ha llegado a la realidad y las reglas del mundo han cambiado completamente, haciendo que la humanidad entre en una era de profesiones que lo cambia todo. ¡Solo obteniendo una profesión puedes subir de nivel y volverte fuerte y pararte en la cima del mundo! En el día del cambio de trabajo, Lin Moyu obtuvo la única profesión oculta, la de nigromante. Desde entonces, las cosas invocadas nunca mueren y Lin Moyu tampoco Muere. “Me siento en el trono de huesos mientras camino entre la vida y la muerte”',
      'rating': 4.5,
      'generos': [
        'Acción',
        'Apocalíptico',
        'Aventura',
        'Ciencia Ficción',
        'Fantasia',
        'Superpoderes',
      ],
      'estado': 'En emisión',
      'alternativo': 'Necromancer, the Coming of Disaster',
    },
    {
      'image': 'assets/imagenes/popular2.jpg',
      'nombre': 'EL INSTRUCTOR DEMONIO CELESTIAL',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://olympusscan.mundoalterno.org/manga/2l-instruct0r-d3mon1o-c2lest334l/capitulo-15/'},
      ],
      'descripcion':
          '«¡¿Maestro, cuál es la siguiente lección?!»Un desastre que golpeó la tierra, [Portal Impact], hizo que Park Hyunsoo, el MC, perdiera a sus padres ante sus ojos.El único miembro de la familia que le queda es su hermano menor que está inconsciente.Para proteger a su hermano menor, hace todo lo posible, pero como un ranker sin poder, siempre estará al lado del desprecio…¡Y es entonces cuando aparece un ayudante, Chungyeong!Chungyeong, un maestro marcial murim que ha viajado a través del tiempo para venir aquí desde el Murim para enseñar a Hyunsoo las artes marciales…»Oye, discípulo…»»Sí, Maestro.»',
      'rating': 4.7,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Fantasia',
        'Superpoderes',
      ],
      'estado': 'En emisión',
      'alternativo': 'THE CELESTIAL DEMON INSTRUCTOR',
    },
    {
      'image': 'assets/imagenes/popular3.jpg',
      'nombre': 'Segunda Vida para Ser un Ranker',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-1-el-ranker-que-vive-dos-veces/'},
        {'nombre': 'Cap. 2', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-2-inicio-del-tutorial/'},
        {'nombre': 'Cap. 3', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-3-mercader/'},
        {'nombre': 'Cap. 4', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-4-tique-x10/'},
        {'nombre': 'Cap. 5', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-5-un-nino/'},
        {'nombre': 'Cap. 6', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-7-el-chico-solitario/'},
        {'nombre': 'Cap. 8', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-8-solo-soy-un-tipo-con-mascara/'},
        {'nombre': 'Cap. 9', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-9-espada-vampirica-bathory/'},
        {'nombre': 'Cap. 10', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-10-obtencion/'},
        {'nombre': 'Cap. 11', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-11-corona/'},
        {'nombre': 'Cap. 12', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://olympusscan.mundoalterno.org/manga/rdewsa-prdews/capitulo-15/'},
      ],
      'descripcion':
          'Yeon-woo tenía un hermano gemelo que desapareció hace cinco años. Un día, un reloj de bolsillo que era de su hermano regresó a su posesión. En el interior, encontró un «diario» oculto en el que estaban grabados todos los recuerdos de su hermano: «Cuando escuches esto, yo ya estaré muerto …».',
      'rating': 4.4,
      'generos': ['Acción', 'Aventura', 'Ciencia Ficción', 'Fantasia', 'Magia'],
      'estado': 'En emisión',
      'alternativo':
          'Second Life Ranker, La Segunda Vida del Ranker, El Ranker que Vive una Segunda vez, Ranker que Vive por Segunda Vez, Ranker Who Lives A Second Time',
    },
    {
      'image': 'assets/imagenes/popular4.jpg',
      'nombre': 'Martial Peak',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://olympusscan.mundoalterno.org/manga/martial-peak/capitulo-15/'},
      ],
      'descripcion':
          'El viaje hacia la cima marcial es solitario y largo. Ante la adversidad, debes sobrevivir y permanecer inflexible. Solo entonces podrás avanzar y continuar tu viaje para convertirte en el más fuerte. El «Pabellón Cielo Alto» pone a prueba a sus discípulos de las formas más duras para prepararlos para este viaje. Un día, el humilde barrendero Yang Kai logró obtener un libro negro, lo que lo puso en el camino hacia la cima del mundo marcial.',
      'rating': 4.2,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Comedia',
        'Harem',
        'Romance',
        'Sobrenatural',
      ],
      'estado': 'En emisión',
      'alternativo': 'Wǔ Liàn Diān Fēng, 武炼巅峰',
    },
    {
      'image': 'assets/imagenes/popular5.jpg',
      'nombre': 'Mantenga un perfil bajo, Líder de Secta',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://olympusscan.mundoalterno.org/manga/mantenga-un-perfil-bajo-lider-de-secta/capitulo-15/'},
      ],
      'descripcion':
          'Viajé al mundo del Cielo Profundo, ¡y no puedo creer que me haya convertido en el líder de una secta inútil! El dinero no me faltaba en mi mundo original, pero sufría de escases de amor, y terminé renaciendo en el mundo de un juego. Haciendo de los jugadores mis trabajadores, y recogiendo a los personajes principales del mundo como mis subordinados. Si hablamos de ser pretencioso, ¡definitivamente me quedaría con el puesto número uno!',
      'rating': 3.7,
      'generos': [
        'Artes Marciales',
        'Aventura',
        'Comedia',
        'Fantasia',
        'Reencarnación',
      ],
      'estado': 'En emisión',
      'alternativo':
          'Zhang Men Di Diao Dian, eadmaster, Keep Yourself Low Profile, Keep a Low Profile, Sect Leader, Sect Head, Be a Bit Modest',
    },
    {
      'image': 'assets/imagenes/popular6.jpg',
      'nombre': 'Emperador Mágico',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/emperador-magico/capitulo-15/'},
      ],
      'descripcion':
          'Zhuo Yifan es un emperador mágico o puede llamarse un emperador demonio, porque tiene un antiguo libro del emperador que se llama el «Libro de los Nueve Secretos», fue atacado por los siete emperadores e incluso su discípulo lo traicionó. Y para no dejar que obtengan el libro Zhuo Yifan condujo el asesinato de su cuerpo así mismo del libro. Luego, su alma entra y vuelve a la vida en un criado familiar llamado Zhuo Fan. Debido a que una magia demoníaca lo está frenando, debe unir los recuerdos del niño y no puede ignorar a la familia y la amante a la que sirve. ¿Cómo es su vida reconstruyendo a su familia y volviendo a ser el más fuerte del continente…?',
      'rating': 4.0,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Fantasia',
        'Reencarnación',
        'Tragedia',
      ],
      'estado': 'En emisión',
      'alternativo':
          'Emperador Mágico, Demonic Emperor, Emperador Demoníaco, 魔皇大管家, The Steward Demonic Emperor, Magic Emperor, Emperador Magico',
    },
    {
      'image': 'assets/imagenes/popular7.jpg',
      'nombre': 'Eternal Deity',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/eternal-deity/capitulo-15/'},
      ],
      'descripcion':
          'Gu Feiyan, el tercer soberano muere y es reencarnado en un niño llamado Li Yunxia, una completa basura que todavia no desperto sus meridianos a pesar de su edad. ¡Pero esto no detendra al mc de alcanzar el pinaculo de este mundo otra vez!.',
      'rating': 4.4,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Comedia',
        'Harem',
        'Reencarnación',
        'Romance',
      ],
      'estado': 'Finalizado',
      'alternativo':
          ' The Ancient Sovereign of Eternity, The Eternal Supreme, The Ultimate of All Ages, The Ancient One, 这一世我要当至尊, El Antiguo Soberano de la Eternidad',
    },
    {
      'image': 'assets/imagenes/popular8.jpg',
      'nombre': 'Maestro: Este discípulo villano no es el Santo Niño',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://olympusscan.mundoalterno.org/manga/maestro-este-discipulo-villano-no-es-el-santo-nino-2/capitulo-15/'},
      ],
      'descripcion':
          'Chu Xiu de la Estrella Azul viajó al Continente Celestial de hace cien años, atado al Sistema de Villanos del Destino Celestial, decapitó a innumerables discípulos y discípulas santos de la Tierra Sagrada y matando hasta el punto de ser invencible entre sus iguales. Al final, se vio rodeado por la vieja generación de personas poderosos, que lo terminó haciendo morir y renacer como el discípulo mayor del Pico Yunxia de la Tierra Sagrada de Taisu. Esta vez, decidió ser mas "perro" y desarrollarse en secreto. Primero se fijó un pequeño objetivo, "¿qué tal convertirse en un hijo santo admirado por millones de personas?"',
      'rating': 4.9,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Fantasia',
        'Harem',
        'Historia',
        'Reencarnación',
        'Romance',
      ],
      'estado': 'En emisión',
      'alternativo':
          ' Maestra, Tu discípulo no es un santo, Maestro: Este discípulo villano no es el Santo Niño, El Tortuoso Hijo Del Cielo, Este Discípulo Tan rebelde No Puede Ser un Discípulo Santo',
    },
    {
      'image': 'assets/imagenes/popular9.jpg',
      'nombre':
          '¿Que tiene de malo que gane algo de dinero siendo conductor de uber?',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/que-tiene-de-malo-que-gane-algo-de-dinero-siendo-conductor-de-uber/capitulo-15/'},
      ],
      'descripcion':
          'De los creadores de Tengo una nueva carrera al azar cada semana llega esta obra: Yang Chen también recibió la noticia de la ruptura de su novia, Zhao Fei Fei, el día en que dimitió tras una fuerte pelea con el líder, y no tuvo más remedio que dirigir un taxi en línea. lucha por convertirse en lo último en dominación mundial.',
      'rating': 5.0,
      'generos': ['Acción', 'Comedia', 'Drama', 'Ecchi', 'Fantasia', 'Harem'],
      'estado': 'En emisión',
      'alternativo':
          'What, is there anything wrong with me making some money as an Uber driver?',
    },
    {
      'image': 'assets/imagenes/popular10.jpg',
      'nombre': 'Tengo Una Nueva Carrera Al Azar Cada Semana',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/tengo-una-nueva-carrera-al-azar-cada-semana/capitulo-15/'},
      ],
      'descripcion':
          'Después de ser despedido por la compañía, Lin Yi obtuvo por error el sistema completo de experiencia profesional. Lin Yi confió en los diversos arreglos profesionales y las generosas recompensas otorgadas por el sistema para lograr su ambición y el camino de ser rico paso a paso, para convertirse en el todoterreno definitivo para dominar el mundo.',
      'rating': 4.1,
      'generos': ['Comedia', 'Ciencia Ficción', 'Echi', 'Harem'],
      'estado': 'En emisión',
      'alternativo': 'I Have A New Random Race Every Week',
    },
  ];
  final List<Map<String, dynamic>> latestUpdates = [
    {
      'image': 'assets/manhua/manhua1.jpg',
      'nombre': 'Solo Leveling: Ragnarok',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/solo-leveling-ragnarok/capitulo-15/'},
      ],
      'descripcion':
          'La existencia de la Tierra se ve amenazada una vez más cuando los Itarim, los dioses de otros universos, intentan llenar el vacío dejado tras la muerte del Ser Absoluto. Sung Jinwoo no tiene más remedio que enviar a Beru, el rey hormiga de las sombras, para despertar los poderes de su hijo e iniciarle en el viaje que una vez emprendió. Suho deberá conquistar la mazmorra de las sombras y ganarse su lugar en el mundo de los cazadores mientras navega por un nuevo mundo contra un nuevo mal que busca tragarse el mundo entero.',
      'rating': 4.6,
      'generos': ['Acción', 'Aventura', 'Magia', 'Manhwa', 'Superpoderes'],
      'estado': 'En emisión',
      'alternativo':
          'Solo Leveling: Ragnarok (manhwa), 나 혼자만 레벨업 : 라그나로크, Na Honjaman Level Up: Ragnarok',
    },
    {
      'image': 'assets/manhua/manhua2.jpg',
      'nombre': 'Dios de la espada dragón',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-149bcb63b671fbb90ac2557cdd6ea844d/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-219c6ddfc18600f32da5402b4a80d20ac/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-3c8366b79587cb0f845bc49ed10e43b20/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-4efcc183ed7c966b34973b8d6faf2f7c7/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-5b0a19df68c68428f76f69f1ed0cad3d1/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-679614fd49c0ec2332690763a60494b97/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-788cf92095a5c17193e3447ff6ea353d7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-86d31c5fe95fb542590f0cac41baa2aae/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-9daa188c40d7df27db6ce3196ac94465c/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-1070745b4d1b3bf95198f99d3c15cb7a0e/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-1175ee016e62091fc09a585d5d90928222/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-1226691d2482bebb0b1c986c8a7bcddc95/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-13c3bd5076655d75c642f3850ac58bf0c7/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-144aa6c01d49d207930ca09f987c6fd14b/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/espada-del-dios-dragon/espada-del-dios-dragn-capitulo-152dcfbe1cf403a99bbece4efae2407b24/'},
      ],
      'descripcion':
          '[Por el estudio que te trajo <El asesino reencarnado es un espadachín genio> y el autor que te trajo <El regreso de la constelación destrozada> y <Second Life Ranker> ] Para los artistas marciales, era conocido como la Calamidad de la Espada o el Monstruo de la Espada, pero para la gente común, era un salvador. Hace unos treinta años, Junghyun, el monstruo más fuerte y temible en la historia de la Secta Wudang, desapareció repentinamente sin dejar rastro después de que el Demonio Celestial muriera. Y después de que pasara algún tiempo, Junghyun, que había mantenido su juventud, reapareció en el mundo marcial, trayendo consigo a una joven. Esta joven era Sojin, la nieta del Demonio Celestial, la única verdadera rival y amiga de Junghyun en la vida. Junghyun emprende un viaje al monte Wudang con Sojin. "¿Podrán los dos completar su viaje sanos y salvos?"',
      'rating': 5.0,
      'generos': ['Artes Marciales', 'Aventura'],
      'estado': 'En emisión',
      'alternativo': 'Dios de la espada dragón',
    },
    {
      'image': 'assets/manhua/manhua3.jpg',
      'nombre': 'El Renacimiento del Dios Supremo del Físico',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/el-renacimiento-del-dios-supremo-del-fisico/capitulo-15/'},
      ],
      'descripcion':
          'Una vez fui el Dios Supremo del Físico, de pie por encima de los demás. Sin embargo, fui traicionado por aquellos a quienes consideraba mis amigos más confiables. Habían planeado contra mí en un intento de matarme, lo cual fue casi exitoso. Afortunadamente, una fracción de mi alma había logrado escapar al cuerpo de un niño gravemente herido, dándome otra oportunidad de vida …',
      'rating': 3.5,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Ecchi',
        'Harem',
        'Reencarnación',
        'Romance',
      ],
      'estado': 'En emisión',
      'alternativo': ' Rebirth of the Supreme God of Physique, Shenwu Tianzun',
    },
    {
      'image': 'assets/manhua/manhua4.jpg',
      'nombre': '¡El Héroe De Nivel Máximo Ha Regresado!',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/el-heroe-de-nivel-maximo-ha-regresado/capitulo-15/'},
      ],
      'descripcion':
          'El débil príncipe de un país insignificante, Davey. Tras entrar en coma, su alma escapó a un templo donde se reunían las almas de los héroes. Se entrenó durante mil años y ahora ha regresado como un héroe de nivel máximo. » ¡Esperen, voy a enfrentarme a todos ustedes de frente!» La refrescante historia de la vida en la realeza y la venganza de Davey, acaba de empezar.',
      'rating': 4.6,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Fantasia',
        'Harem',
        'Reencarnación',
        'Sobrenatural',
      ],
      'estado': 'En emisión',
      'alternativo': '30th, it has 2.4K monthly views',
    },
    {
      'image': 'assets/manhua/manhua5.jpg',
      'nombre': 'El Legado Sombrío Del Mensajero Sin Alma',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/el-legado-sombrio-del-mensajero-sin-alma/capitulo-15/'},
      ],
      'descripcion':
          '[Por el Estudio que te trajo <Hechicero Devorador de Talentos>} El Clan de los Mensajeros es un clan de intocables, perseguidos como herejes desalmados. Para liberarse de la maldición que han heredado, recorrieron el continente con el fin de reunir las Monedas de Oro del Emperador. E incluso entre los herejes, Azadin llevaba la peor maldición. Sin talento para la magia, se convirtió en el mensajero de menor rango con las habilidades que le enseñó un anciano. Recorrió el continente, concediendo deseos a los contratistas a cambio de las Monedas de Oro del Emperador. Entonces, aparece un grimorio capaz de hacer realidad los deseos del clan, y la rebelión de su hermana gemela Arael desvela lentamente una gran conspiración que ha estado oculta todo el tiempo… ¿Cómo resistirá el hereje Azadin a la destrucción que se avecina?',
      'rating': 4.3,
      'generos': ['Drama', 'Fantasia'],
      'estado': 'En emisión',
      'alternativo': ' N/A, it has 625 monthly views',
    },
    {
      'image': 'assets/manhua/manhua6.jpg',
      'nombre': 'El demonio celestial quiere una vida tranquila',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/el-demonio-celestial-quiere-una-vida-tranquila/capitulo-15/'},
      ],
      'descripcion':
          'El demonio celestial quiere una vida tranquila Sinopsis El demonio celestial quiere una vida tranquila [Por el estudio que te trajo {El regreso del demonio loco} y {Regresión absoluta}, ¡y muchos más!] «En mi próxima vida, deseo recorrer un camino completamente diferente…» El Demonio Celestial, cuya vida giraba en torno al miedo y la reverencia, obtuvo una pista crucial para dominar el Arte de Aumento de Almas en el momento de su muerte: El «Arte de Aumento de Almas» no consistía sólo en consumir las almas de los demás. El Demonio Celestial despertó entonces en el cuerpo de Byeok Taesan, un joven y frágil noble que podía morir en cualquier momento… ¡Para sobrevivir, debía dirigirse a la casa de la cortesana! El Demonio Celestial, ahora transformado en el «Rey de la Noche», comienza su ambicioso viaje de supervivencia.',
      'rating': 4.0,
      'generos': ['Artes Marciales', 'Drama', 'Fantasia', 'Superpoderes'],
      'estado': 'En emisión',
      'alternativo': 'N/A, it has 483 monthly views',
    },
    {
      'image': 'assets/manhua/manhua7.jpg',
      'nombre': 'EL MUNDO DESPUES DEL FIN',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/el-mundo-despues-del-fin/capitulo-15/'},
      ],
      'descripcion':
          'Una historia original, traída por el autor de [Punto de vista del lector omnisciente] el autor Sing-Shong. Se trata de un hombre que no retrocedió cuando todos los demás regresaron al pasado. Los humanos fueron convocados repentinamente para convertirse en “Caminantes”, y necesitaban despejar la torre para salvar el mundo. . . Planta 77: Se descubrió la “Piedra de la Regresión”. Los Caminantes podían ahora “volver” al pasado. Poco a poco, todos se fueron. . . Se formó la última esperanza de la humanidad, “Carpe Diem”, formada por personas que se negaban a abandonar el mundo. . . El último caminante llegó a la planta 100. Ya no sabía qué creer.',
      'rating': 3.8,
      'generos': ['Acción', 'Aventura', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': ' N/A, it has 745 monthly views',
    },
    {
      'image': 'assets/manhua/manhua8.jpg',
      'nombre': 'Los gemelos Baek',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://olympusscan.mundoalterno.org/manga/d0bl3-b43k/capitulo-15/'},
      ],
      'descripcion':
          '‘Baek Yi-Soo’ es un Agente de inteligencia de la (HID) y hermano gemelo de ‘Baek Do-kyung’, un jefe de una organización criminal.Ambos, son Hermanos gemelos con la misma cara y una vida diferente.El hermano menor que fue traicionado por la organización decidió renunciar a su identidad y convertirse en su hermano mayor.¡¿Un Agente de inteligencia, o un Jefe de una organización criminal…?!.',
      'rating': 4.6,
      'generos': ['Acción', 'Crimen', 'Drama', 'Militar', 'Supervivencia'],
      'estado': 'En emisión',
      'alternativo': ' N/A, it has 116 monthly views',
    },
    {
      'image': 'assets/manhua/manhua9.jpg',
      'nombre': 'El Villano Del Destino',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-1-me-converti-en-un-gran-villano/'},
        {'nombre': 'Cap. 2', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-2-las-palabras-destino/'},
        {'nombre': 'Cap. 3', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-3-el-auto-cultivo-del-villano/'},
        {'nombre': 'Cap. 4', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-4-el-fisico-de-la-belleza-de-los-nueve-yin-xuan/'},
        {'nombre': 'Cap. 5', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-5-armando-problemas/'},
        {'nombre': 'Cap. 6', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-6-atacando-la-tierra-santa-de-taixuan/'},
        {'nombre': 'Cap. 7', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-7-rompelo/'},
        {'nombre': 'Cap. 8', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-8-soy-del-reino-superior/'},
        {'nombre': 'Cap. 9', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-9-ha-aparecido-el-nuevo-puerro/'},
        {'nombre': 'Cap. 10', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-10-codeese-el-uno-al-otro/'},
        {'nombre': 'Cap. 11', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-11-provocacion/'},
        {'nombre': 'Cap. 12', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-12-si-no-mueres-no-moriras/'},
        {'nombre': 'Cap. 13', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-13-el-sabor-del-poder/'},
        {'nombre': 'Cap. 14', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-14-la-presion/'},
        {'nombre': 'Cap. 15', 'url': 'https://mangacrab.topmanhuas.org/series/the-villain-of-destiny/capitulo-15-la-rebelion-de-shunchang/'},
      ],
      'descripcion':
          'Gu Changge se pasa al mundo de la fantasía Xuan y se abre con un odio lleno de protagonistas ejemplares e hijos de Qi. No sólo la protagonista femenina se lanza a por él, sino que también hay un tratamiento llamativo de un invitado noble. Lo bueno es que su estatus y su fuerza están un paso por encima de los demás, así que no es fácil pisotear a un pequeño hijo de la suerte del qi hasta la muerte… Espera, ¿hay un sistema aquí que se especializa en cosechar todo tipo de protagonistas? Gu Changge sonrió débilmente, ¡parece que esto lo va a llevar cada vez más lejos en el camino del villano del Destino Celestial!',
      'rating': 4.4,
      'generos': [
        'Acción',
        'Artes Marciales',
        'Aventura',
        'Ecchi',
        'Reencarnación',
      ],
      'estado': 'En emisión',
      'alternativo':
          ' El Villano Del Destin, Destiny villain, El gran villano del destino, Me, The Heavenly Destined Villain, I am the Fated Villain, I, The Destined Heavenly Villain, Soy un villano malvado, Soy un villano predestinado, El villano del destino, 我！天命大反派, El Devastador de las Bendiciones del Cielo',
    },
    {
      'image': 'assets/manhua/manhua10.jpg',
      'nombre': 'Asesino Divino, Yo Soy la Sombra',
      'capitulos': [
        {'nombre': 'Cap. 1', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-1/'},
        {'nombre': 'Cap. 2', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-2/'},
        {'nombre': 'Cap. 3', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-3/'},
        {'nombre': 'Cap. 4', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-4/'},
        {'nombre': 'Cap. 5', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-5/'},
        {'nombre': 'Cap. 6', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-6/'},
        {'nombre': 'Cap. 7', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-7/'},
        {'nombre': 'Cap. 8', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-8/'},
        {'nombre': 'Cap. 9', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-9/'},
        {'nombre': 'Cap. 10', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-10/'},
        {'nombre': 'Cap. 11', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-11/'},
        {'nombre': 'Cap. 12', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-12/'},
        {'nombre': 'Cap. 13', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-13/'},
        {'nombre': 'Cap. 14', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-14/'},
        {'nombre': 'Cap. 15', 'url': 'https://olympusscan.mundoalterno.org/manga/asesino-divino-yo-soy-la-sombra/capitulo-15/'},
      ],
      'descripcion':
          'En un mundo donde la gente duerme y entra en el mundo abandonado por dios, qin feng que había dado todo por su hermana es traicionado por ella, pero gracias al destino regresa nueve años antes, justo antes de que apareciera el mundo abandonado por dios, así que ahora qin feng decide abandonar a su hermana y concentrarse en volverse el más fuerte.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': ' N/A, it has 0.9K monthly views',
    },
  ];

////controladores y estado
  int currentPage = 0;  
  final PageController _pageController = PageController(viewportFraction: 0.6);
  bool isDarkTheme = true;

///Metodo buil() de honeScreen
  @override
  Widget build(BuildContext context) {
    final theme = isDarkTheme ? ThemeData.dark() : ThemeData.light(); ///se define el tema en modo oscuro

    return Theme(
      data: theme,
      child: Scaffold(
        backgroundColor: isDarkTheme ? const Color(0xFF1E1E1E) : Colors.white,
        appBar: AppBar(
          backgroundColor: isDarkTheme
              ? const Color(0xFF121212)
              : Colors.blueGrey,
          title: const Text('PatoScan'),
          actions: [ ///botones de la barra de acciones
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => showSearchDialog(),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Inicio',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Biblioteca',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text(
                'Cerrar sesión',
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              icon: Icon(isDarkTheme ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDarkTheme = !isDarkTheme;
                });
              },
            ),
          ],
        ),
        body: Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          thickness: 8,
          radius: const Radius.circular(10),
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isMobile = constraints.maxWidth < 600;
                return Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1000),
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 12.0 : 32.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sectionTitle('📈 Manhuas Populares'),
                        Container(
                          decoration: BoxDecoration(
                            color: isDarkTheme
                                ? Colors.grey[900]
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: popularManhuasCarousel(context),
                        ),
                        const SizedBox(height: 20),
                        sectionTitle('🆕 Últimas Actualizaciones'),
                        Container(
                          decoration: BoxDecoration(
                            color: isDarkTheme
                                ? Colors.grey[900]
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: latestUpdatesSection(context),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

/// en laopcion para buscar manhus muestra un diálogo de búsqueda que permite al usuario buscar manhuas por nombre
  /// y muestra los resultados en una lista que se puede seleccionar para ver los detalles
  void showSearchDialog() {
    final combinedList = [...manhuaData, ...latestUpdates];
    final TextEditingController searchController = TextEditingController();
    List<Map<String, dynamic>> filteredList = List.from(combinedList);

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: isDarkTheme
                  ? const Color(0xFF1E1E1E)
                  : Colors.white,
              contentPadding: const EdgeInsets.all(16),
              content: SizedBox(
                width: 500,
                height: 500,
                child: Column(
                  children: [
                    TextField(
                      controller: searchController,
                      style: TextStyle(
                        color: isDarkTheme ? Colors.black : Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Buscar manhua...',
                        hintStyle: TextStyle(
                          color: isDarkTheme ? Colors.white54 : Colors.black45,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: isDarkTheme ? Colors.white : Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (query) {
                        setState(() {
                          filteredList = combinedList
                              .where(
                                (manhua) => manhua['nombre']
                                    .toLowerCase()
                                    .contains(query.toLowerCase()),
                              )
                              .toList();
                        });
                      },
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: ListView.builder(
                        itemCount: filteredList.length,
                        itemBuilder: (context, index) {
                          final manhua = filteredList[index];
                          return ListTile(
                            leading: Image.asset(
                              manhua['image'],
                              width: 50,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              manhua['nombre'],
                              style: TextStyle(
                                color: isDarkTheme
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              'Capítulo: ${manhua['capitulos'].first['nombre']}',
                              style: TextStyle(
                                color: isDarkTheme
                                    ? Colors.white70
                                    : Colors.black54,
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context); // cerrar diálogo
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ManhuaDetailScreen(
                                    manhua: manhua,
                                    isDarkTheme: isDarkTheme,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

//muestra el título de la sección 
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget popularManhuasCarousel(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDarkTheme ? Colors.white : Colors.black,
          ),
          onPressed: () {
            if (currentPage > 0) {
              currentPage--;
              _pageController.animateToPage(
                currentPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
        Expanded(
          child: SizedBox(
            height: 270,
            child: PageView.builder( /// crea un carrusel en horizontal de manhuas populares 
              controller: _pageController,
              itemCount: manhuaData.length,
              itemBuilder: (context, index) {
                final manhua = manhuaData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ManhuaDetailScreen( //al hacer clic en un manhua, se abre la pantalla de detalles
                          manhua: manhua,
                          isDarkTheme: isDarkTheme,
                        ),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(manhua['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        manhua['nombre'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isDarkTheme ? Colors.white : Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        manhua['capitulos'][0]['nombre'],
                        style: TextStyle(
                          color: isDarkTheme ? Colors.white70 : Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
              onPageChanged: (index) => currentPage = index,
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            color: isDarkTheme ? Colors.white : Colors.black,
          ),
          onPressed: () {
            if (currentPage < manhuaData.length - 1) {
              currentPage++;
              _pageController.animateToPage(
                currentPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
      ],
    );
  } 

  Widget latestUpdatesSection(BuildContext context) {
    final updates = latestUpdates;

    return GridView.builder( // crea una cuadrícula de actualizaciones recientes
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width < 600 ? 1 : 2,
        childAspectRatio: 3.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: updates.length,
      itemBuilder: (context, index) {
        final manhua = updates[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ManhuaDetailScreen(
                  manhua: manhua,
                  isDarkTheme: isDarkTheme,
                ),
              ),
            );
          },
          child: Card(
            color: isDarkTheme ? const Color(0xFF2C2C2C) : Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  width: 60,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(manhua['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        manhua['nombre'],
                        style: TextStyle(
                          color: isDarkTheme ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Capítulo más reciente: ${manhua['capitulos'].first['nombre']}',
                        style: TextStyle(
                          color: isDarkTheme ? Colors.white70 : Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: List.generate(
                          5,
                          (i) => Icon(
                            Icons.star,
                            color: i < manhua['rating'].round()
                                ? Colors.amber
                                : Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
} 
