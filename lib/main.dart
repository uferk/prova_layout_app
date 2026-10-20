import 'package:flutter/material.dart';
import 'widgets/bloco_estatistica.dart'; // DESAFIO 7

void main() {
  runApp(const MeuLayoutApp());
}

class MeuLayoutApp extends StatelessWidget {
  const MeuLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Avaliação 02 (Layout Widgets)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TelaDashboard(),
    );
  }
}

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Dashboard de Observações'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // ===================================================================
          // 📍 DESAFIO 2 (1,0 ponto):
          // Alterar o crossAxisAlignment de .start para CrossAxisAlignment.center
          // ===================================================================
          crossAxisAlignment: CrossAxisAlignment
              .center, // DESAFIO 2: centralizado no eixo transversal
          children: [
            const Text(
              'Resumo das Observações',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),

            // ===================================================================
            // 📍 DESAFIO 1 (1,5 ponto) & DESAFIO 8 (3,0 pontos):
            // Desafio 1: Adicionar o 3º Card (Icons.camera_alt, '45', 'Fotos') com Expanded.
            // Desafio 8: Refatorar esta seção usando GridView.count (grade 2x2).
            // ===================================================================
            // DESAFIO 7: primeira linha componentizada com BlocoEstatistica
            Row(
              children: [
                Expanded(
                  child: BlocoEstatistica(
                    icone: Icons.flutter_dash,
                    valor: '124',
                    rotulo: 'Aves Vistas',
                    cor: Colors.teal.shade100,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: BlocoEstatistica(
                    icone: Icons.place,
                    valor: '18',
                    rotulo: 'Locais Visitados',
                    cor: Colors.teal.shade50,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: BlocoEstatistica(
                    icone: Icons.camera_alt,
                    valor: '45',
                    rotulo: 'Fotos',
                    cor: Colors.teal.shade200,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // DESAFIO 8: layout em grade 2x2 com GridView.count
            GridView.count(
              crossAxisCount: 2, // 2 colunas -> 4 itens formam a grade 2x2
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              childAspectRatio: 1.2,
              // shrinkWrap + NeverScrollableScrollPhysics: GridView dentro de Column
              // com scroll precisa de altura definida (evita "unbounded height").
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                BlocoEstatistica(
                  icone: Icons.flutter_dash,
                  valor: '124',
                  rotulo: 'Aves Vistas',
                  cor: Colors.teal.shade100,
                ),
                BlocoEstatistica(
                  icone: Icons.place,
                  valor: '18',
                  rotulo: 'Locais Visitados',
                  cor: Colors.teal.shade50,
                ),
                BlocoEstatistica(
                  icone: Icons.camera_alt,
                  valor: '45',
                  rotulo: 'Fotos',
                  cor: Colors.teal.shade200,
                ),
                BlocoEstatistica(
                  icone: Icons.eco,
                  valor: '32',
                  rotulo: 'Espécies',
                  cor: Colors.teal.shade100,
                ),
              ],
            ),
            const SizedBox(height: 24.0),

            const Text(
              'Destaque da Semana',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),

            // ===================================================================
            // 📍 DESAFIO 5 (2,0 pontos) & DESAFIO 6 (1,5 ponto):
            // Desafio 5: Adicionar o 2º selo no Stack (bottom: -8, left: -8)
            //            com texto "Confirmado" e cor verde (Colors.green).
            // Desafio 6: Substituir o Container abaixo por um Card(elevation: 4).
            // ===================================================================
            Stack(
              clipBehavior: Clip.none,
              children: [
                // DESAFIO 6: Container substituído por Card do Material (elevation: 4)
                Card(
                  elevation: 4,
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          const Icon(Icons.star, size: 48, color: Colors.amber),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Gavião-Real',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Avistado no Parque Central',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -8,
                  right: -8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Raro',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // DESAFIO 5: 2º selo sobreposto no canto inferior esquerdo
                Positioned(
                  bottom: -8,
                  left: -8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Confirmado',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24.0),

            // ===================================================================
            // 📍 DESAFIO 3 (2,0 pontos):
            // Criar a seção "Últimos Registros" com Container, Row, ícone de lista,
            // texto e botão/ícone com MainAxisAlignment.spaceBetween.
            // ===================================================================
            // DESAFIO 3: seção "Últimos Registros" com Row e MainAxisAlignment.spaceBetween
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                // spaceBetween: empurra o grupo da esquerda e o botão da direita para as pontas
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.list_alt, color: Colors.teal),
                      SizedBox(width: 8),
                      Text(
                        'Últimos Registros',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.teal),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // ===================================================================
            // 📍 DESAFIO 4 (1,5 ponto):
            // Demonstrar/comprovar a ocorrência e correção de um erro de overflow
            // (RenderFlex overflow) via prints ou bloco comentado.
            // ===================================================================
            // DESAFIO 4: RenderFlex overflow
            // ERRO: em uma Row, um Text sem Expanded tem largura ilimitada. Quando o
            // texto é maior que a tela, o Flutter mostra a faixa amarela e preta e
            // registra no console: "A RenderFlex overflowed by X pixels on the right".
            //
            // Row(
            //   children: [
            //     Icon(Icons.flutter_dash, size: 48),
            //     Text('Registro com um texto muito longo que não cabe na largura da tela do celular'),
            //     Icon(Icons.star, size: 48),
            //   ],
            // )
            //
            // CORREÇÃO: Expanded limita o Text ao espaço que sobra na Row, e o texto
            // passa a quebrar de linha (ou a ser cortado com TextOverflow.ellipsis).
            const SizedBox(height: 24.0),
            Row(
              children: const [
                Icon(Icons.flutter_dash, size: 48),
                Expanded(
                  child: Text(
                    'Registro com um texto muito longo que não cabe na largura da tela do celular',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Icon(Icons.star, size: 48),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
