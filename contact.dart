class contact{
  final int id;
  final string name;
  final int accountNumber;
  
  Contact(
    this.id, //para ter acesso a class id dentro do database
    this.name,
    this.accountNumber,
    );
  
  @override
  String toString(){
    return 'Contact{name: $name, accountNumber: $accountNumber};
    }
