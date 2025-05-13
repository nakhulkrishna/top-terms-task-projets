import 'package:flutter/material.dart';
import 'package:task/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SettingsScreen(),
    );
  }
}

// class SettingsScreen extends StatefulWidget {
//   @override
//   _SettingsScreenState createState() => _SettingsScreenState();
// }

// class _SettingsScreenState extends State<SettingsScreen> {
//   String _status = 'Online';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child: Center(
//               child: Text('Add account', style: TextStyle(color: Colors.blue)),
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: 16.0),
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.brown[200],
//                 child: Text('Fe', style: TextStyle(color: Colors.white)),
//               ),
//               SizedBox(width: 10),
//               Text(
//                 'Fedor',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               Spacer(),
//               PopupMenuButton<String>(
//                 onSelected: (value) {
//                   setState(() => _status = value);
//                 },
//                 itemBuilder:
//                     (BuildContext context) => [
//                       PopupMenuItem(
//                         value: 'Online',
//                         child: Row(
//                           children: [
//                             Icon(Icons.circle, color: Colors.green, size: 12),
//                             SizedBox(width: 8),
//                             Text('Online'),
//                           ],
//                         ),
//                       ),
//                       PopupMenuItem(
//                         value: 'Away',
//                         child: Row(
//                           children: [
//                             Icon(Icons.circle, color: Colors.orange, size: 12),
//                             SizedBox(width: 8),
//                             Text('Away'),
//                           ],
//                         ),
//                       ),
//                     ],
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.circle,
//                       color: _status == 'Online' ? Colors.green : Colors.orange,
//                       size: 12,
//                     ),
//                     Icon(Icons.arrow_drop_down),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20),
//           _buildSettingsTile(
//             Icons.lock,
//             'Sign in options',
//             'Password and e-mail',
//             Colors.deepPurple,
//           ),
//           _buildSettingsTile(
//             Icons.link,
//             'Link to you',
//             'Direct link to your chat',
//             Colors.lightBlue,
//           ),
//           _buildSettingsTile(
//             Icons.mail_outline,
//             'Welcome message',
//             'Add, edit, delete',
//             Colors.brown,
//           ),
//           _buildSettingsTile(
//             Icons.notifications,
//             'Notifications',
//             'Mute or unmute chats',
//             Colors.orange,
//           ),
//           _buildSettingsTile(
//             Icons.storage,
//             'Storage',
//             'Set cache limits',
//             Colors.teal,
//           ),
//           _buildSettingsTile(
//             Icons.lock_outline,
//             'Confidentiality',
//             'Blocked users',
//             Colors.grey,
//           ),
//           _buildSettingsTile(
//             Icons.brush,
//             'Interface',
//             'Language, background, ...',
//             Colors.purple,
//           ),
//           _buildSettingsTile(
//             Icons.devices,
//             'Linked devices',
//             'Active sessions',
//             Colors.green[600]!,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSettingsTile(
//     IconData icon,
//     String title,
//     String subtitle,
//     Color iconColor,
//   ) {
//     return ListTile(
//       leading: Container(
//         decoration: BoxDecoration(
//           color: iconColor.withOpacity(0.2),
//           shape: BoxShape.circle,
//         ),
//         padding: EdgeInsets.all(8),
//         child: Icon(icon, color: iconColor),
//       ),
//       title: Text(title),
//       subtitle: Text(subtitle),
//       onTap: () {},
//     );
//   }
// }
