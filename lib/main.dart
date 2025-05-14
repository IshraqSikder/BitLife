import 'package:bitlife/controllers/iconColumn.dart';
import 'package:bitlife/controllers/progressBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BitLifeApp());

class BitLifeApp extends StatelessWidget {
  const BitLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BitLifeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BitLifeScreen extends StatelessWidget {
  const BitLifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('BitLife',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue.shade50,
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First column with an image
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwz3ImClVKX2w5Rzwzlu4cjGijnXMMgnryEw&s',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),

                // Second column with two rows
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Luis Basio',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Color.fromARGB(255, 9, 97, 169),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            '\$0',
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 98, 160)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Elementary School Student',
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 98, 160)),
                          ),
                          Text(
                            'Bank Balance',
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 98, 160)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Age: 0 years',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 97, 169),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum has been the industry'
                      's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Age: 1 years',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 97, 169),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Age: 2 years',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 97, 169),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Age: 3 years',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 97, 169),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Icon Columns
          Container(
            padding: const EdgeInsets.all(10),
            color: const Color(0xFF00569D),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First 2 Icons
                    Expanded(
                      flex: 37,
                      child: IconColumn(Icons.school, 'School', Colors.orange),
                    ),
                    Expanded(
                      flex: 37,
                      child: IconColumn(Icons.savings, 'Assets', Colors.cyan),
                    ),

                    // Middle space for the Age button
                    Expanded(
                      flex: 25,
                      child: Container(),
                    ),

                    // Last 2 Icons
                    Expanded(
                      flex: 37,
                      child: IconColumn(
                          Icons.favorite, 'Relationships', Colors.cyan),
                    ),
                    Expanded(
                      flex: 37,
                      child: IconColumn(
                          Icons.more_horiz, 'Activities', Colors.cyan),
                    ),
                  ],
                ),

                // Age Button
                Positioned(
                  top: -18,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, size: 40, color: Colors.white),
                        Text('Age',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          // Progress Bars
          ProgressBar('Happiness', Icons.emoji_emotions, Colors.amber, 0.71),
          ProgressBar('Health', Icons.favorite, Colors.red, 0.89),
          ProgressBar('Smarts', Icons.psychology, Colors.pink, 0.68),
          ProgressBar('Looks', Icons.wb_sunny, Colors.lightBlue, 0.33),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
