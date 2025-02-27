// ignore_for_file: sized_box_for_whitespace, duplicate_ignore

import 'package:flutter/material.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/4.png'),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello Sacolf!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Send Money',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildCardSelection(),
            SizedBox(height: 20),
            _buildRecentRecipients(),
            SizedBox(height: 20),
            _buildAmountForm(),
            SizedBox(height: 20),
            _buildSendButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildCardSelection() {
    SizedBox(
      width: 10,
      height: 10,
    );

    return Container(
      width: 100,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text('Card ${index + 1}')),
          );
        },
      ),
    );
  }

  Widget _buildRecentRecipients() {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/2_${index + 1}.png'),
            ),
          );
        },
      ),
    );
  }

  Widget _buildAmountForm() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text('\$',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter amount',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSendButton() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle,
                color: const Color.fromARGB(255, 110, 115, 121)),
            SizedBox(width: 8),
            Text("Agree with Ideate's terms and conditions")
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.send, color: Colors.white),
              SizedBox(width: 10),
              Text('Send Money', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
