class UserTransactionItem {
  UserTransactionItem({
    required this.date,
    required this.points,
    required this.status,
    required this.time,
  });

  final String status;
  final String date;
  final String time;
  final String points;
}

class UserData {
  UserData({
    required this.userName,
    required this.balance,
    required this.fullName,
  });

  final String userName;
  final String balance;
  final String fullName;
}

List<UserData> userList = <UserData>[
  UserData(
    userName: 'Janet',
    balance: 'N 2,342 : 00',
    fullName: 'Janet  M  Doe',
  ),
];

List<UserTransactionItem> transactionList = <UserTransactionItem>[
  UserTransactionItem(
    date: '12/06/2022',
    points: '+50points',
    status: 'credit',
    time: '12:34',
  ),
  UserTransactionItem(
    date: '12/06/2022',
    points: '-50points',
    status: 'debit',
    time: '12:34',
  ),
  UserTransactionItem(
    date: '12/06/2022',
    points: '-50points',
    status: 'debit',
    time: '12:34',
  ),
  UserTransactionItem(
    date: '12/06/2022',
    points: '-50points',
    status: 'debit',
    time: '12:34',
  ),
  UserTransactionItem(
    date: '12/06/2022',
    points: '+50points',
    status: 'credit',
    time: '12:34',
  ),
  UserTransactionItem(
    date: '12/06/2022',
    points: '-50points',
    status: 'debit',
    time: '12:34',
  ),
];
