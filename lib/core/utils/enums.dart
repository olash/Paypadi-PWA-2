enum AccountRole {
  passenger(
    title: "I’m a Passenger",
    description:
        "For individuals who want to book and pay for rides effortlessly.",
  ),
  driver(
    title: "I’m a Driver",
    description:
        "For drivers who want to manage ride requests, track earnings, and optimize their trips.",
  );

  const AccountRole({required this.title, required this.description});
  final String title;
  final String description;
}

enum PickedAmount {
  two(value: 200),
  four(value: 400),
  six(value: 600),
  eight(value: 800),
  ten(value: 1000);

  const PickedAmount({required this.value});
  final int value;
}

enum BeneficiaryStatus { recent, saved }

enum PaymentStatus { success, failure }

enum TransactionType {
  withdrawal,
  deposit,
  unknown;

  const TransactionType();

  TransactionType getType(String type) {
    return switch (type) {
      'withdraw' => TransactionType.withdrawal,
      'deposit' => TransactionType.deposit,
      _ => TransactionType.unknown,
    };
  }
}
