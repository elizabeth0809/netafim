import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonBlue.dart';
import 'package:netafim/ui/widgets/logoBlue.dart';

class ReadClientsPage extends StatelessWidget {
  const ReadClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.png'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            LogoBlue(),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.blue, // <-- Button color
                  ),
                ),
                Text('Clientes registrados',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            ButtonBlue(
              onPressed: () {
                Navigator.pushNamed(context, 'tarjetPage');
              },
              text: 'Ver tarjetas de clientes',
            ),
            SizedBox(height: 10),
            Container(
              child: TabBarContainer(),
            )
          ],
        ),
      ),
    ));
  }
}

class TabBarContainer extends StatefulWidget {
  @override
  _TabBarContainerState createState() => _TabBarContainerState();
}

class _TabBarContainerState extends State<TabBarContainer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.2), // Color y opacidad de la sombra
              blurRadius: 5, // Radio de desenfoque de la sombra
              offset: Offset(
                  0, 2), // Desplazamiento horizontal y vertical de la sombra
            ),
          ],
        ),
        child: Container(
          height: 460,
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    text: 'Clientes Activos',
                  ),
                  Tab(
                    text: 'Clientes Archivados',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.white, // Color de fondo blanco
                            child: Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width:
                                    200, // Ancho deseado para el MaterialButton
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  disabledColor: Colors.white,
                                  elevation: 0,
                                  color: Colors.blue,
                                  child: Text(
                                    'Descargar datos',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 60,
                                    ),
                                    title: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, 'dataClientsPage');
                                      },
                                      child: Text(
                                        'Título $index',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Subtítulo $index',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            childCount: 10,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.orange[100],
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text('Cliente Archivado $index'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//test