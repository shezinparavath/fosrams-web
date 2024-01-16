class TimeSheetTableModel {
  final String name;
  final String email;
  final String number;
  final bool visible;
  TimeSheetTableModel(this.name, this.email, this.number,
      {this.visible = true});
}

List<TimeSheetTableModel> timeSheetModelList = [
  TimeSheetTableModel('Name', 'Email', 'Phone Number', visible: false),
  TimeSheetTableModel('Kalyan Bajwa', 'KalyanBajwa@mail.com', '975565865325'),
  TimeSheetTableModel('Adam', 'Adam@mail.com', '9888258895231'),
  TimeSheetTableModel('steve', 'Steve@mail.com', '9871024560')
];
