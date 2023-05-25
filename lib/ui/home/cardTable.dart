import 'package:flutter/material.dart';
import 'package:netafim/ui/home/widgets/singleCard.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Ajustar al tamaño mínimo requerido
      children: [
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  'addClientsPage',
                ),
                child: SingleCard(
                  icon: Icons.person_add,
                  text: 'Añadir cliente',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  'readClientsPage',
                ),
                child: SingleCard(
                  icon: Icons.people,
                  text: 'Ver clientes',
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            'profileClientsPage',
          ),
          child: SingleCard(
            icon: Icons.person,
            text: 'Ir a perfil',
          ),
        ),
      ],
    );
  }
}
