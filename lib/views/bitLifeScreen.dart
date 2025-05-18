import 'package:flutter/material.dart';
import '../controllers/snackBarMessage.dart';
import '../widgets/iconColumn.dart';
import '../widgets/progressBar.dart';

class BitLifeScreen extends StatelessWidget {
  const BitLifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildProfileSection(), // Profile Section
          _buildDescription(), // Text Section
          _buildIconColumns(context), // Icon Column Section
          const SizedBox(height: 25),
          _buildProgressBars(), // Progress Bars Section
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.red,
    iconTheme: const IconThemeData(color: Colors.white),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('BitLife',
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  SizedBox(width: 3),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            // Become a Bitizen Button
            GestureDetector(
              onTap: () {
                SnackBarMessage(
                    context, 'Bitizen Button is Clicked', Colors.black);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Become a ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'BITIZEN',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget _buildProfileSection() {
  return Container(
    color: Colors.blue.shade50,
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Profile Image column
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwz3ImClVKX2w5Rzwzlu4cjGijnXMMgnryEw&s',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10),

        // Profile Text column
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Color(0xFF00569D),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF00569D),
                    ),
                  ),
                  Text(
                    '\$0',
                    style: TextStyle(
                      color: Color(0xFF00569D),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Elementary School Student',
                    style: TextStyle(
                      color: Color(0xFF00569D),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Bank Balance',
                    style: TextStyle(
                      color: Color(0xFF00569D),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildDescription() {
  return Expanded(
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
                color: Color(0xFF00569D),
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
                color: Color(0xFF00569D),
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
                color: Color(0xFF00569D),
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
                color: Color(0xFF00569D),
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
  );
}

Widget _buildIconColumns(BuildContext context) {
  return Container(
    color: const Color(0xFF00569D),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First 2 Icons
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 0.5,
                ),
              ),
              child: Expanded(
                flex: 15,
                child: IconColumn(
                  context: context,
                  icon: Icons.school,
                  label: 'School',
                  color: Colors.orange,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 0.5,
                ),
              ),
              child: Expanded(
                flex: 15,
                child: IconColumn(
                  context: context,
                  icon: Icons.savings,
                  label: 'Assets',
                  color: Colors.cyan,
                ),
              ),
            ),

            // Middle space for the Age button
            Expanded(
              flex: 25,
              child: Container(),
            ),

            // Last 2 Icons
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 0.5,
                ),
              ),
              child: Expanded(
                flex: 15,
                child: IconColumn(
                  context: context,
                  icon: Icons.favorite,
                  label: 'Relationships',
                  color: Colors.cyan,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 0.5,
                ),
              ),
              child: Expanded(
                flex: 15,
                child: IconColumn(
                  context: context,
                  icon: Icons.more_horiz,
                  label: 'Activities',
                  color: Colors.cyan,
                ),
              ),
            ),
          ],
        ),

        // Age Button
        Positioned(
          top: -10,
          left: MediaQuery.of(context).size.width / 2 - 57,
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                SnackBarMessage(context, 'Age Button is Clicked', Colors.black);
              },
              child: const CircleAvatar(
                radius: 45,
                backgroundColor: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, size: 50, color: Colors.white),
                    Text(
                      'Age',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 0.5,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildProgressBars() {
  return const Column(
    children: [
      ProgressBar(
          label: 'Happiness',
          icon: Icons.emoji_emotions,
          iconColor: Colors.amber,
          value: 0.71),
      ProgressBar(
          label: 'Health',
          icon: Icons.favorite,
          iconColor: Colors.red,
          value: 0.89),
      ProgressBar(
          label: 'Smarts',
          icon: Icons.psychology,
          iconColor: Colors.pink,
          value: 0.68),
      ProgressBar(
          label: 'Looks',
          icon: Icons.wb_sunny,
          iconColor: Colors.lightBlue,
          value: 0.33),
    ],
  );
}
