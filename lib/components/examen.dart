import 'package:flutter/material.dart';

class Examen extends StatelessWidget {
  final String code;
  final String date;
  final String type_examen;
  final String marqueur;

  const Examen(
      {super.key,
      required this.code,
      required this.date,
      required this.marqueur,
      required this.type_examen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue.shade300,
        height: 180,
        width: 280,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 230,
                ),
                Icon(Icons.more_vert_outlined)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Examen Type",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Nom Examen",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Date",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(16.0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 4, 97, 7)),
                  ),
                  onPressed: () {},
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 100.0, // Largeur maximale souhaitée
                      maxHeight: 20.0, // Hauteur maximale souhaitée
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "data",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
