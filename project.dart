import 'dart:io';

void main() {
  List<Map<String, String>> clients = [];
  int choice = -1;
  int clientId = 1;
  String myCompany = "Javeri Tech Solutions";

  while (choice != 0) {
    print("\n====== Client Management System ======");
    print("Company: $myCompany");
    print("1. Add Client");
    print("2. View All Clients");
    print("3. Search Client");
    print("4. Update Client");
    print("5. Delete Client");
    print("0. Exit");
    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter Client Name: ");
      String name = stdin.readLineSync()!;

      stdout.write("Enter Client Phone: ");
      String phone = stdin.readLineSync()!;

      stdout.write("Enter Client Company: ");
      String clientCompany = stdin.readLineSync()!;

      clients.add({
        "id": clientId.toString(),
        "name": name,
        "phone": phone,
        "company": clientCompany,
      });

      print("Client Added Successfully!");
      clientId++;
    } else if (choice == 2) {
      print("\n--- All Clients ---");
      if (clients.isEmpty) {
        print("No clients found.");
      } else {
        for (var c in clients) {
          print(
            "ID: ${c['id']} | Name: ${c['name']} | Phone: ${c['phone']} | Company: ${c['company']}",
          );
        }
      }
    } else if (choice == 3) {
      stdout.write("Enter name to search: ");
      String search = stdin.readLineSync()!.toLowerCase();

      bool found = false;
      print("\n--- Search Results ---");

      for (var c in clients) {
        if (c["name"]!.toLowerCase().contains(search)) {
          print(
            "ID: ${c['id']} | Name: ${c['name']} | Phone: ${c['phone']} | Company: ${c['company']}",
          );
          found = true;
        }
      }

      if (!found) print("No matching clients found.");
    } else if (choice == 4) {
      stdout.write("Enter Client ID to update: ");
      String id = stdin.readLineSync()!;

      bool updated = false;

      for (var c in clients) {
        if (c["id"] == id) {
          stdout.write("Enter New Name: ");
          c["name"] = stdin.readLineSync()!;

          stdout.write("Enter New Phone: ");
          c["phone"] = stdin.readLineSync()!;

          stdout.write("Enter New Company: ");
          c["company"] = stdin.readLineSync()!;

          print("Client Updated Successfully!");
          updated = true;

          break;
        }
      }

      if (!updated) print("Client not found.");
    } else if (choice == 5) {
      stdout.write("Enter Client ID to delete: ");
      String id = stdin.readLineSync()!;

      bool removed = false;

      for (var c in clients) {
        if (c["id"] == id) {
          clients.remove(c);
          print("Client Deleted Successfully!");
          removed = true;
          break;
        }
      }

      if (!removed) print("Client not found.");
    } else if (choice == 0) {
      print("Exiting program...");
    } else {
      print("Invalid choice. Try again...");
    }
  }
}
