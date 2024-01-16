class EmployeeTableModel {
  final String name;
  final String email;
  final String number;
  final String logInTime;
  final String logOutTime;
  final String duration;
  EmployeeTableModel(this.name, this.email, this.number, this.logInTime,
      this.logOutTime, this.duration);
}

List<EmployeeTableModel> employeeModelList = [
  EmployeeTableModel('Name', 'Email', 'Phone Number', 'Log In Time',
      'Log Out Time', 'Duration'),
  EmployeeTableModel('Kalyan Bajwa', 'KalyanBajwa@mail.com', '975565865325',
      '9:00 AM', '6:00 PM', '12 Hours'),
  EmployeeTableModel('Adam', 'Adam@mail.com', '9888258895231', '9:00 AM',
      '6:00 PM', '12 Hours'),
  EmployeeTableModel(
      'steve', 'Steve@mail.com', '9871024560', '9:00 AM', '6:00 PM', '12 Hours')
];
