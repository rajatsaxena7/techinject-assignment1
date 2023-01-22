import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class InsertData extends StatefulWidget {
  const InsertData({Key? key}) : super(key: key);

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userWeightController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Inserting data'),
          backgroundColor: Color.fromARGB(255, 164, 74, 216)),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Please enter your details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter Your Name',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userAgeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                  hintText: 'Enter Your Age',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userWeightController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Weight',
                  hintText: 'Enter Your Weight',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Map<String, String> user = {
                    'name': userNameController.text,
                    'age': userAgeController.text,
                    'weight': userWeightController.text
                  };

                  dbRef.push().set(user);
                },
                child: const Text('Insert Data'),
                color: Color.fromARGB(255, 164, 74, 216),
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
