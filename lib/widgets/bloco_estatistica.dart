import 'package:flutter/material.dart';

/// DESAFIO 7: bloco de estatística reutilizável (ícone, valor e rótulo).
/// Não usa Expanded por dentro: quem usa decide como o bloco ocupa o espaço
/// (Expanded em uma Row, ou célula de um GridView).
class BlocoEstatistica extends StatelessWidget {
  final IconData icone;
  final String valor;
  final String rotulo;
  final Color cor;

  const BlocoEstatistica({
    super.key,
    required this.icone,
    required this.valor,
    required this.rotulo,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icone, size: 36, color: Colors.teal),
          const SizedBox(height: 8),
          Text(valor, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text(rotulo, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
