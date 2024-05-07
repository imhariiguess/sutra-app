import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Contact> _contacts = [
    // Initial contact
    Contact(name: 'Emergency Services', number: '101'),
  ];
  Future<void> _sendSMS(List<String> contacts) async {
    String message = "I have crashed. Please send help to location: 12.874830834235272, 80.22171663791678";
    List<String> recipients = contacts;

    try {

      String result = await sendSMS(message: message, recipients: recipients);
      if (result == "True") {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('SMS sent successfully!')),
        );
;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to send SMS')),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error')),
      );
    }
  }

  // Function to add a new contact
  void _addNewContact(String name, String number) {
    setState(() {
      _contacts.add(Contact(name: name, number: number));
    });
  }

  // Function to retrieve all contact numbers
  List<String> _getContactNumbers() {
    return _contacts.map((contact) => contact.number).toList();
  }

  // Function to handle Send SMS button press (replace with actual SMS sending logic)


  void _sendingSMS() {
    List<String> contactNumbers = _getContactNumbers();
    _sendSMS(contactNumbers);
    // Replace with your actual SMS sending logic using the contactNumbers list
    //print('Sending SMS to contacts: $contactNumbers');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        actions: [
          // Add Send SMS button to AppBar actions
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _sendingSMS,
          ),
        ],
      ),
      body: Column(
        children: [
          // Display contacts
          Expanded(
            child: ListView.builder(
              itemCount: _contacts.length,
              itemBuilder: (context, index) {
                final contact = _contacts[index];
                return ListTile(
                  title: Text(contact.name),
                  subtitle: Text(contact.number),
                );
              },
            ),
          ),
          // Add new contact button
          TextButton.icon(
            onPressed: () => _navigateToAddContact(context),
            icon: Icon(Icons.add),
            label: Text('Add Contact'),
          ),
        ],
      ),
    );
  }

  // Function to navigate to add contact page
  void _navigateToAddContact(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddContactPage()),
    );

    if (result != null) {
      // Add new contact if user entered details
      _addNewContact(result['name'], result['number']);
    }
  }
}

class Contact {
  final String name;
  final String number;

  Contact({required this.name, required this.number});
}

class AddContactPage extends StatefulWidget {
  @override
  _AddContactPageState createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _numberController,
              decoration: InputDecoration(labelText: 'Number'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _saveContact(context),
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to save contact and pop data back
  void _saveContact(BuildContext context) {
    final name = _nameController.text;
    final number = _numberController.text;

    if (name.isEmpty || number.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter name and number')),
      );
      return;
    }

    Navigator.pop(context, {'name': name, 'number': number}); // Pop data back
  }
}
