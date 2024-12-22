import 'package:atm_consultoria_app/pages/client_page.dart';
import 'package:atm_consultoria_app/pages/contact_page.dart';
import 'package:atm_consultoria_app/pages/enterprise_page.dart';
import 'package:atm_consultoria_app/pages/service_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openCompany() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EnterprisePage()));
  }

  void _openServices() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ServicePage()));
  }

  void _openClient() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ClientPage()));
  }

  void _openContact() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ContactPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('ATM Consultoria'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32,
          children: <Widget>[
            Image(image: AssetImage('assets/images/logo.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: _openCompany,
                    child: Image(
                        image: AssetImage('assets/images/menu_empresa.png'))),
                GestureDetector(
                    onTap: _openServices,
                    child: Image(
                        image: AssetImage('assets/images/menu_servico.png'))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                    onTap: _openClient,
                    child: Image(
                        image: AssetImage('assets/images/menu_cliente.png'))),
                GestureDetector(
                    onTap: _openContact,
                    child: Image(
                        image: AssetImage('assets/images/menu_contato.png'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
