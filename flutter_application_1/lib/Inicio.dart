// main.dart
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
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'El juego ha llegado a la realidad y las reglas del mundo han cambiado completamente, haciendo que la humanidad entre en una era de profesiones que lo cambia todo. ¡Solo obteniendo una profesión puedes subir de nivel y volverte fuerte y pararte en la cima del mundo! En el día del cambio de trabajo, Lin Moyu obtuvo la única profesión oculta, la de nigromante. Desde entonces, las cosas invocadas nunca mueren y Lin Moyu tampoco Muere. “Me siento en el trono de huesos mientras camino entre la vida y la muerte”',
      'rating': 4.5,
      'generos': ['Acción', 'Apocalíptico', 'Aventura', 'Ciencia Ficción', 'Fantasia', 'Superpoderes'],
      'estado': 'En emisión',
      'alternativo': 'Necromancer, the Coming of Disaster',
    },
    {
      'image': 'assets/imagenes/popular2.jpg',
      'nombre': 'EL INSTRUCTOR DEMONIO CELESTIAL',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion':'«¡¿Maestro, cuál es la siguiente lección?!»Un desastre que golpeó la tierra, [Portal Impact], hizo que Park Hyunsoo, el MC, perdiera a sus padres ante sus ojos.El único miembro de la familia que le queda es su hermano menor que está inconsciente.Para proteger a su hermano menor, hace todo lo posible, pero como un ranker sin poder, siempre estará al lado del desprecio…¡Y es entonces cuando aparece un ayudante, Chungyeong!Chungyeong, un maestro marcial murim que ha viajado a través del tiempo para venir aquí desde el Murim para enseñar a Hyunsoo las artes marciales…»Oye, discípulo…»»Sí, Maestro.»',
      'rating': 4.7,
      'generos': ['Acción', 'Artes Marciales', 'Aventura', 'Fantasia', 'Superpoderes'],
      'estado': 'En emisión',
      'alternativo': 'THE CELESTIAL DEMON INSTRUCTOR',
    },
    {
      'image': 'assets/imagenes/popular3.jpg',
      'nombre': 'Segunda Vida para Ser un Ranker',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'Yeon-woo tenía un hermano gemelo que desapareció hace cinco años. Un día, un reloj de bolsillo que era de su hermano regresó a su posesión. En el interior, encontró un «diario» oculto en el que estaban grabados todos los recuerdos de su hermano: «Cuando escuches esto, yo ya estaré muerto …».',
      'rating': 4.4,
      'generos': ['Acción', 'Aventura', 'Ciencia Ficción', 'Fantasia', 'Magia'],
      'estado': 'En emisión',
      'alternativo': 'Second Life Ranker, La Segunda Vida del Ranker, El Ranker que Vive una Segunda vez, Ranker que Vive por Segunda Vez, Ranker Who Lives A Second Time',
    },
    {
      'image': 'assets/imagenes/popular4.jpg',
      'nombre': 'Martial Peak',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'El viaje hacia la cima marcial es solitario y largo. Ante la adversidad, debes sobrevivir y permanecer inflexible. Solo entonces podrás avanzar y continuar tu viaje para convertirte en el más fuerte. El «Pabellón Cielo Alto» pone a prueba a sus discípulos de las formas más duras para prepararlos para este viaje. Un día, el humilde barrendero Yang Kai logró obtener un libro negro, lo que lo puso en el camino hacia la cima del mundo marcial.',
      'rating': 4.2,
      'generos': ['Acción', 'Artes Marciales', 'Aventura', 'Comedia', 'Harem', 'Romance', 'Sobrenatural'],
      'estado': 'En emisión',
      'alternativo': 'Wǔ Liàn Diān Fēng, 武炼巅峰',
    },
    {
      'image': 'assets/imagenes/popular5.jpg',
      'nombre': 'Mantenga un perfil bajo, Líder de Secta',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'Viajé al mundo del Cielo Profundo, ¡y no puedo creer que me haya convertido en el líder de una secta inútil! El dinero no me faltaba en mi mundo original, pero sufría de escases de amor, y terminé renaciendo en el mundo de un juego. Haciendo de los jugadores mis trabajadores, y recogiendo a los personajes principales del mundo como mis subordinados. Si hablamos de ser pretencioso, ¡definitivamente me quedaría con el puesto número uno!',
      'rating': 3.7,
      'generos': ['Artes Marciales', 'Aventura', 'Comedia', 'Fantasia', 'Reencarnación'],
      'estado': 'En emisión',
      'alternativo': 'Zhang Men Di Diao Dian, eadmaster, Keep Yourself Low Profile, Keep a Low Profile, Sect Leader, Sect Head, Be a Bit Modest',
    },
    {
      'image': 'assets/imagenes/popular6.jpg',
      'nombre': 'Emperador Mágico',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'Zhuo Yifan es un emperador mágico o puede llamarse un emperador demonio, porque tiene un antiguo libro del emperador que se llama el «Libro de los Nueve Secretos», fue atacado por los siete emperadores e incluso su discípulo lo traicionó. Y para no dejar que obtengan el libro Zhuo Yifan condujo el asesinato de su cuerpo así mismo del libro. Luego, su alma entra y vuelve a la vida en un criado familiar llamado Zhuo Fan. Debido a que una magia demoníaca lo está frenando, debe unir los recuerdos del niño y no puede ignorar a la familia y la amante a la que sirve. ¿Cómo es su vida reconstruyendo a su familia y volviendo a ser el más fuerte del continente…?',
      'rating': 4.0,
      'generos': ['Acción', 'Artes Marciales', 'Aventura', 'Fantasia', 'Reencarnación', 'Tragedia'],
      'estado': 'En emisión',
      'alternativo': 'Emperador Mágico, Demonic Emperor, Emperador Demoníaco, 魔皇大管家, The Steward Demonic Emperor, Magic Emperor, Emperador Magico',
    },
    {
      'image': 'assets/imagenes/popular7.jpg',
      'nombre': 'Eternal Deity',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'Gu Feiyan, el tercer soberano muere y es reencarnado en un niño llamado Li Yunxia, una completa basura que todavia no desperto sus meridianos a pesar de su edad. ¡Pero esto no detendra al mc de alcanzar el pinaculo de este mundo otra vez!.',
      'rating': 4.4,
      'generos': ['Acción', 'Artes Marciales', 'Aventura', 'Comedia', 'Harem', 'Reencarnación', 'Romance'],
      'estado': 'Finalizado',
      'alternativo': ' The Ancient Sovereign of Eternity, The Eternal Supreme, The Ultimate of All Ages, The Ancient One, 这一世我要当至尊, El Antiguo Soberano de la Eternidad',
    },
    {
      'image': 'assets/imagenes/popular8.jpg',
      'nombre': 'Maestro: Este discípulo villano no es el Santo Niño',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'Chu Xiu de la Estrella Azul viajó al Continente Celestial de hace cien años, atado al Sistema de Villanos del Destino Celestial, decapitó a innumerables discípulos y discípulas santos de la Tierra Sagrada y matando hasta el punto de ser invencible entre sus iguales. Al final, se vio rodeado por la vieja generación de personas poderosos, que lo terminó haciendo morir y renacer como el discípulo mayor del Pico Yunxia de la Tierra Sagrada de Taisu. Esta vez, decidió ser mas "perro" y desarrollarse en secreto. Primero se fijó un pequeño objetivo, "¿qué tal convertirse en un hijo santo admirado por millones de personas?"',
      'rating': 4.9,
      'generos': ['Acción', 'Artes Marciales', 'Aventura', 'Fantasia', 'Harem', 'Historia', 'Reencarnación', 'Romance'],
      'estado': 'En emisión',
      'alternativo': ' Maestra, Tu discípulo no es un santo, Maestro: Este discípulo villano no es el Santo Niño, El Tortuoso Hijo Del Cielo, Este Discípulo Tan rebelde No Puede Ser un Discípulo Santo',
    },
    {
      'image': 'assets/imagenes/popular9.jpg',
      'nombre': '¿Que tiene de malo que gane algo de dinero siendo conductor de uber?',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'De los creadores de Tengo una nueva carrera al azar cada semana llega esta obra: Yang Chen también recibió la noticia de la ruptura de su novia, Zhao Fei Fei, el día en que dimitió tras una fuerte pelea con el líder, y no tuvo más remedio que dirigir un taxi en línea. lucha por convertirse en lo último en dominación mundial.',
      'rating': 5.0,
      'generos': ['Acción', 'Comedia', 'Drama', 'Ecchi', 'Fantasia', 'Harem'],
      'estado': 'En emisión',
      'alternativo': 'What, is there anything wrong with me making some money as an Uber driver?',
    },
    {
      'image': 'assets/imagenes/popular10.jpg',
      'nombre': 'Tengo Una Nueva Carrera Al Azar Cada Semana',
      'capitulos': ['Cap. 1', 'Cap. 2','Cap. 4','Cap. 5','Cap. 6','Cap. 7','Cap. 8','Cap. 9','Cap. 10','Cap. 11','Cap. 12','Cap. 13','Cap. 14','Cap. 15'],
      'descripcion': 'Después de ser despedido por la compañía, Lin Yi obtuvo por error el sistema completo de experiencia profesional. Lin Yi confió en los diversos arreglos profesionales y las generosas recompensas otorgadas por el sistema para lograr su ambición y el camino de ser rico paso a paso, para convertirse en el todoterreno definitivo para dominar el mundo.',
      'rating': 4.1,
      'generos': ['Comedia', 'Ciencia Ficción', 'Echi', 'Harem'],
      'estado': 'En emisión',
      'alternativo': 'I Have A New Random Race Every Week',
    },
  ]; // tu lista completa original aquí
  final List<Map<String, dynamic>> latestUpdates = [
    {
      'image': 'assets/manhua/manhua1.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua2.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua3.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua4.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua5.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua6.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua7.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua8.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua9.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
    {
      'image': 'assets/manhua/manhua10.jpg',
      'nombre': 'Cazador de Sombras',
      'capitulos': ['Cap. 229', 'Cap. 228'],
      'descripcion': 'El protagonista lucha contra seres oscuros usando poderes heredados.',
      'rating': 4.3,
      'generos': ['Acción', 'Comedia', 'Fantasía'],
      'estado': 'En emisión',
      'alternativo': 'Shadow Hunter',
    },
  ]; // tu lista completa original aquí

  int currentPage = 0;
  final PageController _pageController = PageController(viewportFraction: 0.6);
  final TextEditingController _searchController = TextEditingController();
  bool isDarkTheme = true;

  @override
  Widget build(BuildContext context) {
    final theme = isDarkTheme ? ThemeData.dark() : ThemeData.light();

    return Theme(
      data: theme,
      child: Scaffold(
        backgroundColor: isDarkTheme ? const Color(0xFF1E1E1E) : Colors.white,
        appBar: AppBar(
          backgroundColor: isDarkTheme ? const Color(0xFF121212) : Colors.blueGrey,
          title: const Text('Manhua App'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => showSearchDialog(),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Inicio', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Biblioteca', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text('Cerrar sesión', style: TextStyle(color: Colors.white)),
            ),
            IconButton(
              icon: Icon(isDarkTheme ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDarkTheme = !isDarkTheme;
                });
              },
            )
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
                            color: isDarkTheme ? Colors.grey[900] : Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: popularManhuasCarousel(context),
                        ),
                        const SizedBox(height: 20),
                        sectionTitle('🆕 Últimas Actualizaciones'),
                        Container(
                          decoration: BoxDecoration(
                            color: isDarkTheme ? Colors.grey[900] : Colors.grey[200],
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
            backgroundColor: isDarkTheme ? const Color(0xFF1E1E1E) : Colors.white,
            contentPadding: const EdgeInsets.all(16),
            content: SizedBox(
              width: 500,
              height: 500,
              child: Column(
                children: [
                  TextField(
                    controller: searchController,
                    style: TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Buscar manhua...',
                      hintStyle: TextStyle(color: isDarkTheme ? Colors.white54 : Colors.black45),
                      prefixIcon: Icon(Icons.search, color: isDarkTheme ? Colors.white : Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onChanged: (query) {
                      setState(() {
                        filteredList = combinedList.where((manhua) =>
                          manhua['nombre'].toLowerCase().contains(query.toLowerCase())
                        ).toList();
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
                          leading: Image.asset(manhua['image'], width: 50, height: 70, fit: BoxFit.cover),
                          title: Text(
                            manhua['nombre'],
                            style: TextStyle(color: isDarkTheme ? Colors.white : Colors.black),
                          ),
                          subtitle: Text(
                            'Capítulo: ${manhua['capitulos'].first}',
                            style: TextStyle(color: isDarkTheme ? Colors.white70 : Colors.black54),
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
          icon: Icon(Icons.arrow_back_ios, color: isDarkTheme ? Colors.white : Colors.black),
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
            child: PageView.builder(
              controller: _pageController,
              itemCount: manhuaData.length,
              itemBuilder: (context, index) {
                final manhua = manhuaData[index];
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
                        '${manhua['capitulos'][0]} | ${manhua['capitulos'][1]}',
                        style: TextStyle(color: isDarkTheme ? Colors.white70 : Colors.black54),
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
          icon: Icon(Icons.arrow_forward_ios, color: isDarkTheme ? Colors.white : Colors.black),
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

  } // tu método existente

  Widget latestUpdatesSection(BuildContext context) {
    final updates = latestUpdates;

    return GridView.builder(
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
                        'Capítulo más reciente: ${manhua['capitulos'].first}',
                        style: TextStyle(color: isDarkTheme ? Colors.white70 : Colors.black54),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: List.generate(
                          5,
                          (i) => Icon(
                            Icons.star,
                            color: i < manhua['rating'].round() ? Colors.amber : Colors.grey,
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

  } // tu método existente

class ManhuaSearchDelegate extends SearchDelegate {
  final List<Map<String, dynamic>> manhuaList;
  final bool isDarkTheme;

  ManhuaSearchDelegate(this.manhuaList, this.isDarkTheme);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return isDarkTheme ? ThemeData.dark() : ThemeData.light();
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = manhuaList.where((manhua) =>
        manhua['nombre'].toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final manhua = results[index];
        return ListTile(
          leading: Image.asset(manhua['image'], width: 50, height: 70, fit: BoxFit.cover),
          title: Text(manhua['nombre']),
          subtitle: Text('Capítulo: ${manhua['capitulos'].first}'),
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
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = manhuaList.where((manhua) =>
        manhua['nombre'].toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final manhua = suggestions[index];
        return ListTile(
          leading: Image.asset(manhua['image'], width: 50, height: 70, fit: BoxFit.cover),
          title: Text(manhua['nombre']),
          onTap: () {
            query = manhua['nombre'];
            showResults(context);
          },
        );
      },
    );
  }
}
