enum TypeTransfer { DOC, TED }

class Transfer {
  final String name;
  final String document;
  final String account;
  final String amount;
  final TypeTransfer type;

  Transfer(this.name, this.document, this.account, this.amount, this.type);

  @override
  String toString() {
    return '        => Transfer(name: $name, document: $document, account: $account, amount: $amount, type: $type)';
  }
}
