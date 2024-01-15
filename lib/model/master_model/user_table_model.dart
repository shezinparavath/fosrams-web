class UserTableModel {
  final String name;
  final String email;
  final String number;

  UserTableModel(this.name, this.email, this.number);
}

List<UserTableModel> userTableList = [
  UserTableModel('Name', 'Email', 'Number'),
  UserTableModel('Admin', 'Admin@mail.com', '85479214'),
  UserTableModel('Abc', 'Abc@mail.com', '8472391044'),
  UserTableModel('User', 'User@mail.com', '8794258614')
];
