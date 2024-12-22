import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                spacing: 10,
                children: [
                  Image(image: AssetImage('assets/images/detalhe_cliente.png')),
                  const Text(
                    'Clientes',
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Image.asset('assets/images/cliente1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 16, right: 16),
              child: const Text(
                'Empresa de Software',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Image.asset('assets/images/cliente2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 16, right: 16),
              child: const Text(
                'Empresa de Auditoria',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
