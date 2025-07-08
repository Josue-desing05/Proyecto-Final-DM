import 'package:flutter/material.dart';
import 'Inicio.dart';
import 'main.dart';

class ManhuaDetailScreen extends StatefulWidget {
  final Map<String, dynamic> manhua;
  final bool isDarkTheme;

  const ManhuaDetailScreen({
    Key? key,
    required this.manhua,
    required this.isDarkTheme,
  }) : super(key: key);

  @override
  State<ManhuaDetailScreen> createState() => _ManhuaDetailScreenState();
}

class _ManhuaDetailScreenState extends State<ManhuaDetailScreen> {
  late bool isDarkTheme;
  final TextEditingController _searchController = TextEditingController();
  late List<String> sortedChapters;
  bool sortDescending = true;

  @override
  void initState() {
    super.initState();
    isDarkTheme = widget.isDarkTheme;
    sortedChapters = List<String>.from(widget.manhua['capitulos']);
    sortChapters();
  }

  void sortChapters() {
    sortedChapters.sort((a, b) {
      final numA = int.tryParse(a.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
      final numB = int.tryParse(b.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
      return sortDescending ? numB.compareTo(numA) : numA.compareTo(numB);
    });
  }

  void showSearchDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Buscar Manhua"),
        content: TextField(
          controller: _searchController,
          decoration: const InputDecoration(hintText: "Escribe el nombre del manhua"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Función de búsqueda no implementada.")),
              );
              _searchController.clear();
            },
            child: const Text("Buscar"),
          ),
          TextButton(
            onPressed: () {
              _searchController.clear();
              Navigator.pop(context);
            },
            child: const Text("Cancelar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeColor = isDarkTheme ? Colors.white : Colors.black;
    final secondaryColor = isDarkTheme ? Colors.white70 : Colors.black54;

    return Scaffold(
      backgroundColor: isDarkTheme ? const Color(0xFF1E1E1E) : Colors.black,
      appBar: AppBar(
        backgroundColor: isDarkTheme ? const Color(0xFF121212) : Colors.blueGrey,
        title: Text(widget.manhua['nombre'], style: TextStyle(color: themeColor)),
        iconTheme: IconThemeData(color: themeColor),
        actions: [
          IconButton(icon: Icon(Icons.search, color: themeColor), onPressed: showSearchDialog),
          TextButton(
            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen())),
            child: Text("Inicio", style: TextStyle(color: themeColor)),
          ),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Biblioteca no implementada")));
            },
            child: Text("Biblioteca", style: TextStyle(color: themeColor)),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage())),
            child: Text("Cerrar sesión", style: TextStyle(color: themeColor)),
          ),
          IconButton(
            icon: Icon(isDarkTheme ? Icons.light_mode : Icons.dark_mode, color: themeColor),
            onPressed: () => setState(() => isDarkTheme = !isDarkTheme),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // INFO PRINCIPAL
            Container(
              decoration: BoxDecoration(
                color: isDarkTheme ? const Color(0xFF2C2C2C) : Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      widget.manhua['image'],
                      width: 180,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ...List.generate(
                              5,
                              (i) => Icon(
                                Icons.star,
                                size: 22,
                                color: i < widget.manhua['rating'].round() ? Colors.amber : Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('${widget.manhua['rating']}', style: TextStyle(fontSize: 18, color: themeColor)),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text("Rating", style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold)),
                        Text("Average ${widget.manhua['rating']} / 5", style: TextStyle(color: secondaryColor)),
                        const SizedBox(height: 6),
                        Text("Rank", style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold)),
                        Text("14th, it has 3.9K monthly views", style: TextStyle(color: secondaryColor)),
                        const SizedBox(height: 6),
                        Text("Alternative", style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold)),
                        Text(widget.manhua['alternativo'], style: TextStyle(color: secondaryColor)),
                        const SizedBox(height: 6),
                        Text("Genre(s)", style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold)),
                        Wrap(
                          spacing: 6,
                          children: List.generate(
                            widget.manhua['generos'].length,
                            (index) => Chip(
                              backgroundColor: isDarkTheme ? Colors.blueGrey : Colors.grey.shade600,
                              label: Text(widget.manhua['generos'][index], style: const TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber.shade200),
                              child: const Text("Read First", style: TextStyle(color: Colors.black)),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber.shade200),
                              child: const Text("Read Last", style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // SINOPSIS
            const SizedBox(height: 24),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isDarkTheme ? const Color(0xFF2C2C2C) : Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '📘 Sinopsis',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: themeColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.manhua['descripcion'],
                    style: TextStyle(fontSize: 16, color: secondaryColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // CAPÍTULOS
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDarkTheme ? const Color(0xFF2C2C2C) : Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('📚 Capítulos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: themeColor)),
                      DropdownButton<bool>(
                        value: sortDescending,
                        dropdownColor: Colors.grey.shade800,
                        icon: const Icon(Icons.sort, color: Colors.white),
                        style: const TextStyle(color: Colors.white),
                        items: const [
                          DropdownMenuItem(value: true, child: Text('Mayor a menor', style: TextStyle(color: Colors.white))),
                          DropdownMenuItem(value: false, child: Text('Menor a mayor', style: TextStyle(color: Colors.white))),
                        ],
                        onChanged: (value) {
                          setState(() {
                            sortDescending = value!;
                            sortChapters();
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ...sortedChapters.map((cap) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      decoration: BoxDecoration(
                        color: isDarkTheme ? const Color(0xFF3C3C3C) : Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        title: Center(child: Text(cap, style: TextStyle(color: themeColor))),
                        onTap: () {},
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
