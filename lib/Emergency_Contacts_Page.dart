/*import 'package:flutter/material.dart';
//import 'package:flutter_sms/flutter_sms_web.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_sms/flutter_sms.dart'; // For SMS functionality
import 'package:url_launcher/url_launcher.dart';


class EmergencyContactsPage extends StatefulWidget {
  @override
  _EmergencyContactsPageState createState() => _EmergencyContactsPageState();
}

class _EmergencyContactsPageState extends State<EmergencyContactsPage> {
  List<String> emergencyContacts = ["+918682085860"]; // List to store emergency contact numbers

  // Function to request contacts permission
  Future<void> _requestContactsPermission() async {
    final status = await Permission.contacts.request();
    if (status == PermissionStatus.granted) {
      // Permission granted, proceed to access contacts
      //_pickContacts();
      _sendSMS();
    } else {
      // Handle permission denied scenario (optional)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Access to contacts denied')),
      );
    }
  }

  // Function to pick contacts from the device
  /*void _pickContacts() async {
    List<String> selectedContacts = await FlutterSms.pickContacts(context: context);
    for (String contact in selectedContacts) {
      emergencyContacts.add(contact); // Add phone numbers
    }
    setState(() {}); // Update UI to reflect changes
  }*/

  // Function to send SMS to all emergency contacts
  void _sendSMS() async {
    String message = 'I have gotten into a crash. Please send help to my location.';
    List<String> recipents = ["+918682085860"];
    //for (String contactNumber in emergencyContacts) {
      /*try {
        await sendSMS(message: message, recipients: [contactNumber]);
      } catch (error) {
        // Handle SMS sending error (optional)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to send SMS to $contactNumber')),
        );*/
      String _result = await sendSMS(message: message, recipients: recipents, sendDirect: true)
          .catchError((onError) {
        print(onError);
      });
      print(_result);
      }
    }
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contacts'),
      ),
      body: Column(
        children: [
          // Display existing emergency contacts (if any)
          ListView.builder(
            shrinkWrap: true, // Prevent list from expanding unnecessarily
            itemCount: emergencyContacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(emergencyContacts[index]),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Button to add contacts
              ElevatedButton.icon(
                onPressed: _requestContactsPermission,
                icon: Icon(Icons.add),
                label: Text('Add Contacts'),
              ),
              // Button to send SMS
              ElevatedButton.icon(
                onPressed: _sendSMS,
                icon: Icon(Icons.message),
                label: Text('Send SOS'),
              ),
            ],
          ),
        ],
      ),
    );
  }
//}
*/