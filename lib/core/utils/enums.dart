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
  two(displayedAmount: "₦200", value: 200),
  four(displayedAmount: "₦400", value: 400),
  six(displayedAmount: "₦600", value: 600),
  eight(displayedAmount: "₦800", value: 800),
  ten(displayedAmount: "₦1000", value: 1000);

  const PickedAmount({
    required this.displayedAmount,
    required this.value,
  });

  final String displayedAmount;
  final int value;
}

enum BeneficiaryStatus { recent, saved }


