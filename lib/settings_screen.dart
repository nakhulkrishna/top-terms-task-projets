import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/constant/colors.dart';
import 'package:task/logic/dropdown.dart';
import 'package:task/model/model.dart';
import 'package:task/widgets/item_card.dart';
import 'package:task/widgets/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingsItem> settingsItems = [
      SettingsItem(
        AppColors.green,
        title: 'Profile',
        subtitle: 'Profile picture, about',
        icons: Icons.person,
      ),
      SettingsItem(
        AppColors.indigo,
        title: 'Sign in Options',
        subtitle: 'Password and e-mail',
        icons: Icons.login,
      ),
      SettingsItem(
        AppColors.lightBlue,
        title: 'Link to You',
        subtitle: 'Direct link to your chat',
        icons: Icons.link,
      ),
      SettingsItem(
        AppColors.tan,
        title: 'Welcome Message',
        subtitle: 'Add, edit, delete',
        icons: Icons.message_outlined,
      ),
      SettingsItem(
        AppColors.yellow,
        title: 'Notification',
        subtitle: 'Mute or unmute chats',
        icons: Icons.notifications_rounded,
      ),
      SettingsItem(
        AppColors.teal,
        title: 'Storage',
        subtitle: 'Set cache limits',
        icons: Icons.storage,
      ),
      SettingsItem(
        AppColors.greyBlue,
        title: 'Confidentiality',
        subtitle: 'Blocked users',
        icons: Icons.lock,
      ),
      SettingsItem(
        AppColors.purple,
        title: 'Interface',
        subtitle: 'Language, background',
        icons: Icons.brush,
      ),
      SettingsItem(
        AppColors.olive,
        title: 'Linked Devices',
        subtitle: 'Active sessions',
        icons: Icons.laptop,
      ),
      SettingsItem(
        AppColors.indigo,
        title: 'Download and Update',
        subtitle: 'iOS, Android, Windows, macOS',
        icons: Icons.download,
      ),
    ];

    return BlocProvider(
      create: (context) => DropdownCubit(),
      child: Scaffold(
        bottomNavigationBar: BlocBuilder<DropdownCubit, Color>(
          builder: (context, statusColor) {
            return BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.link), label: ""),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 40,
                    width: 40,
                    child: ProfileWidgets(status: statusColor),
                  ),
                  label: "",
                ),
              ],
            );
          },
        ),
        backgroundColor: AppColors.lightGrey,
        appBar: AppBar(
          actions: [
            Text(
              "Add Account ",
              style: TextStyle(color: Colors.blue),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ],
          leading: BlocBuilder<DropdownCubit, Color>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () async {
                  final status = await showMenu<String>(
                    color: Colors.white,
                    context: context,
                    position: RelativeRect.fromLTRB(0, 80, 0, 0),
                    items: [
                      PopupMenuItem(
                        value: 'Online',
                        child: Row(
                          children: [
                            Icon(Icons.circle, color: Colors.green, size: 12),
                            SizedBox(width: 8),
                            Text('Online'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Away',
                        child: Row(
                          children: [
                            Icon(Icons.circle, color: Colors.orange, size: 12),
                            SizedBox(width: 8),
                            Text('Away'),
                          ],
                        ),
                      ),
                    ],
                  );

                  if (status != null) {
                    context.read<DropdownCubit>().changeStatus(status);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ProfileWidgets(status: state),
                ),
              );
            },
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final item = settingsItems[index];
            return ItemCard(item: item);
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
