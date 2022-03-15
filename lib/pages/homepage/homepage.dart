import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 221, 221),
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("HomePage"),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Libro1",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "Amor en tiempos del colera",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/libro1.jpg',
                          height: 150,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () => _showModalBottomSheet(context),
                            child: Text("Ver detalles"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20)))),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: new Icon(Icons.payment),
                title: Text("Precio: 100 bs"),
              ),
              ListTile(
                leading: new Icon(Icons.payment),
                title: Text("Stock: 20"),
              ),
              ListTile(
                onTap: () {},
                leading: new Icon(Icons.payment),
                title: Text("Comprar"),
              )
            ],
          );
        });
  }
}
