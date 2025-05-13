## Flutter Settings Screen
This project is a simple Flutter application showcasing a Settings Screen with a bottom navigation bar, dynamic profile status, and a list of settings items. The app utilizes the flutter_bloc package for state management and displays a range of settings options.

* Features
Bottom Navigation Bar: Allows easy access to different sections of the app.

* Profile Section: Displays the user's profile icon and dynamic status (e.g., 'Online', 'Away').

* Settings Items: Displays various settings options such as Profile, Notifications, and Storage.

* Dropdown with Cubit: Provides the ability to change the user's online status using a popup menu.

* Custom Widgets: Includes ItemCard and ProfileWidgets to display settings and user profile details.

## Dependencies
The following dependencies are used in the project:

* flutter_bloc: Used for managing state with the BLoC pattern.

* material.dart: Standard Flutter material widgets.

## Installation
* Clone the repository:


git clone <repository_url>
Navigate to the project directory:

bash
Copy
Edit
cd <project_directory>
Install dependencies:

bash
Copy
Edit
flutter pub get
Run the app:

bash
Copy
Edit
flutter run
Project Structure
lib/

constant/colors.dart: Contains color constants used throughout the app.

logic/dropdown.dart: Contains logic for managing the dropdown menu and changing the user's online status.

model/model.dart: Defines the SettingsItem class, which holds data for each setting in the list.

widgets/item_card.dart: Contains a widget for displaying each settings item.

widgets/profile.dart: Contains the widget to display the user's profile with a status indicator.

AppBar & Bottom Navigation
The AppBar has a text widget to display "Add Account". The BottomNavigationBar contains the following items:

Link icon: Opens the link settings.

Chat icon: Opens the chat settings.

Profile icon: Displays the user's profile with the current status.

The user can tap on the profile icon in the app bar to display a popup menu with two options: 'Online' and 'Away'. The selected status is shown on the profile icon.

Screenshots
You can add screenshots of the app here to show the layout and appearance of the app.