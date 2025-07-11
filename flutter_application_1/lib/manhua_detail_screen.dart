import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Inicio.dart';
import 'main.dart';

class ManhuaDetailScreen extends StatefulWidget {
  final Map<String, dynamic> manhua;
  final bool isDarkTheme;

  const ManhuaDetailScreen({
    super.key,
    required this.manhua,
    required this.isDarkTheme,
  });

  @override
  State<ManhuaDetailScreen> createState() => _ManhuaDetailScreenState();
}

class _ManhuaDetailScreenState extends State<ManhuaDetailScreen> {
  late bool isDarkTheme;
  late List<Map<String, String>> sortedChapters;
  bool sortDescending = true;

  @override
  void initState() {
    super.initState();
    isDarkTheme = widget.isDarkTheme;
    sortedChapters = List<Map<String, String>>.from(widget.manhua['capitulos']);
    sortChapters();
  }

  void sortChapters() {
    sortedChapters.sort((a, b) {
      final numA =
          int.tryParse(a['nombre']!.replaceAll(RegExp(r'\D'), '')) ?? 0;
      final numB =
          int.tryParse(b['nombre']!.replaceAll(RegExp(r'\D'), '')) ?? 0;
      return sortDescending ? numB.compareTo(numA) : numA.compareTo(numB);
    });
  }

  Future<void> _abrirCapitulo(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No se pudo abrir el capítulo")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeColor = isDarkTheme ? Colors.white : Colors.black;
    final secondaryColor = isDarkTheme ? Colors.white70 : Colors.black54;

    return Scaffold(
      backgroundColor: isDarkTheme ? const Color(0xFF1E1E1E) : Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkTheme
            ? const Color(0xFF121212)
            : Colors.blueGrey,
        title: Text(
          widget.manhua['nombre'],
          style: TextStyle(color: themeColor),
        ),
        iconTheme: IconThemeData(color: themeColor),
        actions: [
          IconButton(
            icon: Icon(
              isDarkTheme ? Icons.light_mode : Icons.dark_mode,
              color: themeColor,
            ),
            onPressed: () {
              setState(() => isDarkTheme = !isDarkTheme);
            },
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            ),
            child: Text("Inicio", style: TextStyle(color: themeColor)),
          ),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Biblioteca no implementada")),
              );
            },
            child: Text("Biblioteca", style: TextStyle(color: themeColor)),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const LoginPage()),
            ),
            child: Text("Cerrar sesión", style: TextStyle(color: themeColor)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                final isMobile = constraints.maxWidth < 600;
                return Container(
                  decoration: BoxDecoration(
                    color: isDarkTheme
                        ? const Color(0xFF2C2C2C)
                        : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: isMobile
                      ? Column(
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  widget.manhua['image'],
                                  width: 200,
                                  height: 270,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            _infoSection(themeColor, secondaryColor),
                          ],
                        )
                      : Row(
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
                              child: _infoSection(themeColor, secondaryColor),
                            ),
                          ],
                        ),
                );
              },
            ),
            const SizedBox(height: 24),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isDarkTheme
                    ? const Color(0xFF2C2C2C)
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '📘 Sinopsis',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: themeColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.manhua['descripcion'],
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: secondaryColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDarkTheme
                    ? const Color(0xFF2C2C2C)
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '📚 Capítulos',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: themeColor,
                        ),
                      ),
                      DropdownButton<bool>(
                        value: sortDescending,
                        dropdownColor: isDarkTheme
                            ? Colors.grey[850]
                            : Colors.grey[300],
                        icon: Icon(Icons.sort, color: themeColor),
                        style: TextStyle(color: themeColor),
                        items: const [
                          DropdownMenuItem(
                            value: true,
                            child: Text('Mayor a menor'),
                          ),
                          DropdownMenuItem(
                            value: false,
                            child: Text('Menor a mayor'),
                          ),
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
                      margin: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: isDarkTheme
                            ? const Color(0xFF3C3C3C)
                            : Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        title: Center(
                          child: Text(
                            cap['nombre']!,
                            style: TextStyle(color: themeColor),
                          ),
                        ),
                        onTap: () => _abrirCapitulo(cap['url']!),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoSection(Color themeColor, Color secondaryColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ...List.generate(
              5,
              (i) => Icon(
                Icons.star,
                size: 22,
                color: i < widget.manhua['rating'].round()
                    ? Colors.amber
                    : Colors.grey,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '${widget.manhua['rating']}',
              style: TextStyle(fontSize: 18, color: themeColor),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          "Alternative",
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.manhua['alternativo'],
          style: TextStyle(color: secondaryColor),
        ),
        const SizedBox(height: 6),
        Text(
          "Genre(s)",
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
        ),
        Wrap(
          spacing: 6,
          children: List.generate(
            widget.manhua['generos'].length,
            (index) => Chip(
              backgroundColor: isDarkTheme
                  ? Colors.blueGrey
                  : Colors.grey.shade600,
              label: Text(
                widget.manhua['generos'][index],
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                if (sortedChapters.isNotEmpty) {
                  _abrirCapitulo(sortedChapters.last['url']!);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber.shade200,
              ),
              child: const Text(
                "Read First",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {
                if (sortedChapters.isNotEmpty) {
                  _abrirCapitulo(sortedChapters.first['url']!);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber.shade200,
              ),
              child: const Text(
                "Read Last",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
