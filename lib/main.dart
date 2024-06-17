import 'package:flutter/material.dart';

void main() {
  runApp(const VolleyApp());
}

class VolleyApp extends StatelessWidget {
  const VolleyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Volley do Fim de Semana',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
      routes: {
        '/endSet': (context) => const EndSetPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32), // Add some space at the top
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/volley_logo.jpeg',
                    height:
                        50), // Ensure you have the logo asset in the specified path
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Volley',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'do fim de semana',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32), // Add space between logo and teams
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      border: Border.all(
                          color: Colors.white,
                          width: 3), // Adicionando a borda branca
                    ),
                    width:
                        380, // Aumente o valor para cobrir as quatro palavras
                    child: const Center(
                      child: Text(
                        'TIMES',
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    children: [
                      TeamWidget(teamName: 'Sicranos', players: 3),
                      TeamWidget(teamName: 'Autoconvidados', players: 3),
                      TeamWidget(teamName: 'Ziraldos', players: 4),
                      TeamWidget(teamName: 'Sparrings', players: 5),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32), // Add space between teams and button
            Center(
              child: Column(
                children: [
                  const Text(
                    'Jogo Casado',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/endSet');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Colors.white,
                            width: 2), // Adicionando a borda branca
                      ),
                    ),
                    child: const Text(
                      'Iniciar',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32), // Add space at the bottom
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TeamWidget extends StatelessWidget {
  final String teamName;
  final int players;

  const TeamWidget({super.key, required this.teamName, required this.players});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 16.0), // Space to the right of the text
              child: Text(
                teamName,
                textAlign: TextAlign.end, // Align text to the end (right)
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.6), // 2 cm space between words and numbers
          Row(
            children: [
              Text(
                '$players',
                style: const TextStyle(
                  fontSize: 42, // Match the size with 'jogadores'
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              const RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'jogadores',
                  style: TextStyle(
                    fontSize: 7,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EndSetPage extends StatelessWidget {
  const EndSetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                // Add your onPressed code here!
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 1),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(Icons.circle,
                                    color: Colors.blue, size: 50),
                                Text('A',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24)),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Ziraldos',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Padding(
                        padding: EdgeInsets.only(left: 150.0),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(Icons.circle,
                                    color: Colors.blue, size: 50),
                                Text('B',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24)),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Autoconvidados',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 1),
                  const VolleyballCourt(),
                  const SizedBox(height: 1),
                  const Text(
                    'Tempo de jogo: 1:14\'00"',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.transparent,
                            content: RotatedBox(
                              quarterTurns: 1,
                              child: Container(
                                width: 400,
                                height: 400,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'FIM DE SET',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Center(
                                      child: Text(
                                        'Autoconvidados',
                                        style: TextStyle(
                                          fontSize: 36,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 1),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 185),
                                        child: Text(
                                          'VENCEU',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(
                                                  context); // Fecha a caixa de diálogo
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MyApp()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              backgroundColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: const BorderSide(
                                                    color: Colors.white,
                                                    width: 2),
                                              ),
                                            ),
                                            child: const Text('Terminar'),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              // Implemente sua lógica para o botão "Novo Set"
                                              Navigator.pop(
                                                  context); // Fechar a caixa de diálogo
                                            },
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              backgroundColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: const BorderSide(
                                                    color: Colors.white,
                                                    width: 2),
                                              ),
                                            ),
                                            child: const Text('Novo Set'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                    child: const Text(
                      'Placar Geral',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 1, // Ajustado para mover mais para a esquerda
              top: 50,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Ace',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 1, // Ajustado para mover mais para a esquerda
              top: 110,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Text('Ataque',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            Positioned(
              left: 1, // Ajustado para mover mais para a esquerda
              top: 170,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Text('Bloqueio',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            Positioned(
              left: 1, // Ajustado para mover mais para a esquerda
              top: 230,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Text('Erro',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            Positioned(
              right: 1,
              top: 50,
              child: Row(
                children: [
                  const Text('Ace',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 1,
              top: 110,
              child: Row(
                children: [
                  const Text('Ataque',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 1,
              top: 170,
              child: Row(
                children: [
                  const Text('Bloqueio',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 1,
              top: 230,
              child: Row(
                children: [
                  const Text('Erro',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Colors.blueAccent,
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VolleyballCourt extends StatelessWidget {
  const VolleyballCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(color: Colors.white, width: 3),
      ),
      width: 500,
      height: 140,
      child: Stack(
        children: [
          CustomPaint(
            painter: CourtPainter(),
            child: Container(),
          ),
          Positioned(
            bottom: 40,
            left: 100,
            child: Column(
              children: [
                Image.asset('assets/volley_logo.jpeg',
                    height:
                        30), // Ensure you have the logo asset in the specified path
                const Text(
                  '12',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 40,
            right: 100,
            child: Text(
              '22',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CourtPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3;

    final center = Offset(size.width / 2, size.height / 2);

    final start = Offset(center.dx, 0);
    final end = Offset(center.dx, size.height);

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RotatedBox(
        quarterTurns: 1,
        child: ScoreboardPage(),
      ),
    );
  }
}

class ScoreboardPage extends StatelessWidget {
  const ScoreboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: Stack(
          children: [
            AppBar(
              title: const Text('PLACAR GERAL'),
              centerTitle: true,
              backgroundColor: const Color(0xFF19A0C4),
            ),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: Image.asset(
                'assets/z.jpeg',
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFF19A0C4),
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.89,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6E40),
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: ScoreColumn(
                          team: 'A',
                          scores: [
                            'Ziraldos',
                            'Ziraldos',
                            'Ziraldos',
                            'Sparrings'
                          ],
                          points: [25, 25, 10, 25],
                        ),
                      ),
                    ),
                    Container(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ScoreColumn(
                          team: 'B',
                          scores: [
                            'Sparrings',
                            'Sicranos',
                            'Autoconvidados',
                            'Autoconvidados'
                          ],
                          points: [10, 10, 25, 10],
                          moveNumbersToLeft: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.3 - 80,
              top: MediaQuery.of(context).size.height * 0.4 - 152,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/s.jpeg', width: 20, height: 20),
                  const SizedBox(
                      height: 10), // Ajuste a altura conforme necessário
                  Image.asset('assets/s.jpeg', width: 20, height: 20),
                  const SizedBox(
                      height: 10), // Ajuste a altura conforme necessário
                  Image.asset('assets/s.jpeg', width: 20, height: 20),
                  const SizedBox(
                      height: 10), // Ajuste a altura conforme necessário
                  Image.asset('assets/s.jpeg', width: 20, height: 20),
                ],
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.3 - 101,
              top: MediaQuery.of(context).size.height * 0.4 - 175,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  Text(
                    '0:24\'90"',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '0:14\'23"',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '0:35\'04"',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '0:11\'29"',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 38,
                color: const Color(0xFF22BAD1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Text(
                        'Ziraldos: 3',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Sicranos: 1',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Autoconvidados: 8',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Sparrings: ',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreColumn extends StatelessWidget {
  final String team;
  final List<String> scores;
  final List<int> points;
  final bool moveNumbersToLeft;

  const ScoreColumn(
      {Key? key,
      required this.team,
      required this.scores,
      required this.points,
      this.moveNumbersToLeft = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Text(team,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 10),
        ...List.generate(scores.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                if (!moveNumbersToLeft)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(scores[index],
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white)),
                    ),
                  ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      points[index].toString(),
                      style:
                          const TextStyle(fontSize: 16, color: Colors.orange),
                    )),
                if (moveNumbersToLeft)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(scores[index],
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white)),
                    ),
                  ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
