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

enum BeneficiaryStatus { recent, saved }
