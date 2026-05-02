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
  two(value: "200"),
  four(value: "400"),
  six(value: "600"),
  eight(value: "800"),
  ten(value: "1000");

  const PickedAmount({required this.value});
  final String value;
}

enum BeneficiaryType {
  recent(typeName: "Recent"),
  saved(typeName: "Saved");

  const BeneficiaryType({required this.typeName});
  final String typeName;
}

enum TransactionStatus { success, pending, completed, failure }

enum TransactionType { transfer, deposit, withdrawal, unknown }

enum UploadStatus { idle, uploading, complete, failed }

enum DocumentCategory {
  driverLicenseFront("Driver’s License (Front)"),
  driverLicenseBack("Driver’s License (Back)"),
  vehicleLicense("Vehicle License");

  const DocumentCategory(this.title);
  final String title;
}
