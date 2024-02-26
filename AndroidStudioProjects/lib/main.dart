
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleName = "MAI Health";
    return MaterialApp(
      title: titleName,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: 'Arial',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: AppBar(
            toolbarHeight: 130,
            backgroundColor: Colors.lightGreenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 0),
                      Image.asset(
                        "assets/ing/Logo MAI.png",
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(width: 30),
                      Text("VietNam"),
                      SizedBox(width: 30),
                      RawMaterialButton(
                        onPressed: () {
                          // Handle button press
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          doSomeThing(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.account_circle, size: 40,),
              onPressed: () {
                // Handle my account icon tap
              },
            ),
          ],
        ),
      ),
    );
  }
}


class doSomeThing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSquareButton1(context), // Pass the context to the function
                SizedBox(width: 20),
                buildSquareButton2(context), // Pass the context to the function
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSquareButton3(context), // Pass the context to the function
                SizedBox(width: 20),
                buildSquareButton4(context), // Pass the context to the function
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildSquareButton1(BuildContext context) {
    return SizedBox(
      width: 185,
      height: 185,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DoctorPage()), // Navigate to DoctorPage
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Doctor.png"),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSquareButton2(BuildContext context) {
    return SizedBox(
      width: 185,
      height: 185,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NotePage()), // Navigate to NotePage
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Note.png"),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSquareButton3(BuildContext context) {
    return SizedBox(
      width: 185,
      height: 185,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LichPage()), // Navigate to LichPage
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Lich.png"),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSquareButton4(BuildContext context) {
    return SizedBox(
      width: 185,
      height: 185,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NghePage()), // Navigate to NghePage
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          // Make button transparent
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ing/Nghe.png"),
              // Replace with your image path
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, color: Colors.white),
              // Adjust text color
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}



class DoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Doctor", textAlign: TextAlign.center),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 60),
          buildRectangularButton("Dr. Tran Ly Nhat Hao", () {
            // Handle button 1 press
          }),
          SizedBox(height: 40), // Adjust spacing between buttons
          buildRectangularButton("Dr. LE Thanh Phong", () {
            // Handle button 2 press
          }),
          SizedBox(height: 40),
          buildRectangularButton("Dr. Huynh Hao Nam", () {
            // Handle button 3 press
          }),
          SizedBox(height: 40),
          buildRectangularButton("Dr. Nguyen Tan Loc & Dr Kieu Doan", () {
            // Handle button 4 press
          }),
          SizedBox(height: 40),
          buildRectangularButton("Dr. Nguyen Tien Luat & Pham Thien Minh", () {
            // Handle button 5 press
          }),
        ],
      ),
    );
  }

  Widget buildRectangularButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: 250, // Adjusted width
      height: 100, // Adjust the height of the button
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(80, 0, 200, 136),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10), // Adjust border radius as needed
          ),
        ),
      ),
    );
  }
}

class NotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Record Notebook"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Patient Name: Nguyen Tan Loc",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Date of Birth: April 12, 2005",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Progress Notes:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  MedicalRecordTile(
                    date: "January 15, 2024",
                    progressNote: "Routine checkup",
                  ),
                  MedicalRecordTile(
                    date: "February 5, 2024",
                    progressNote: "Follow-up appointment",
                  ),
                  // Add more MedicalRecordTile widgets for additional records
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicalRecordTile extends StatelessWidget {
  final String date;
  final String progressNote;

  const MedicalRecordTile({
    required this.date,
    required this.progressNote,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(date),
      subtitle: Text(progressNote),
      onTap: () {
        // Add navigation logic to view full medical record
        // Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalRecordDetails()));
      },
    );
  }
}




class LichPage extends StatefulWidget {
  @override
  _LichPageState createState() => _LichPageState();
}

class _LichPageState extends State<LichPage> {
  String? selectedRegion; // Initial selected region
  TextEditingController searchController = TextEditingController();
  List<String> searchResults = []; // List to store search results

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule an appointment"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            DropdownButton<String>(
              hint: Text('Choose region'), // Display hint text
              value: selectedRegion,
              onChanged: (String? newValue) {
                setState(() {
                  selectedRegion = newValue;
                });
                // Handle selection of region
              },
              items: <String>[
                'Northern VietNam',
                'Central VietNam',
                'Southern VietNam',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20), // Adjust spacing between selection and search bar
            Text(
              "Selected region: ${selectedRegion ?? 'No region selected'}", // Display selected region or "No region selected" if null
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20), // Adjust spacing between text and search bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search for hospital',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    // Perform search
                    performSearch();
                  },
                  icon: Icon(Icons.search),
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 20), // Adjust spacing between search bar and search results
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchResults[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void performSearch() {
    // Perform search based on selected region and search query
    String searchQuery = searchController.text;
    if (selectedRegion != null && searchQuery.isNotEmpty) {
      // Simulate search results, replace with actual search logic
      setState(() {
        searchResults = [
          'Result 1 for $searchQuery in ${selectedRegion!}',
          'Result 2 for $searchQuery in ${selectedRegion!}',
          'Result 3 for $searchQuery in ${selectedRegion!}',
        ];
      });
    }
  }
}


class NghePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Service"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 200,),
          Center( // Wrap the Text widget with Center
            child: Text(
              "Contact us: 0375309072\nEmail: lethanhphong2005@gmail.com",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
