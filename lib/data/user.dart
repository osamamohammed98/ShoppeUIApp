import 'dart:io';

enum userType { customer, mershant }

class AppUser {
  String companyName;
  String userName;
  String email;
  String password;
  String mobileNumber;
  File logo;
  String logoUrl;
  String companyActivity;
  userType type;

  AppUser(
      {this.companyName,
      this.userName,
      this.email,
      this.password,
      this.mobileNumber,
      this.logo,
      this.logoUrl,
      this.companyActivity,
      this.type});

  factory AppUser.newUser(Map map) {
    bool isMershant = map['isMershant'] ?? false;
    if (isMershant) {
      return AppUser.mershantUser(map);
    } else {
      return AppUser.customerUser(map);
    }
  }

  AppUser.mershantUser(Map map) {
    this.companyName = map["companyName"];
    this.userName = map["userName"];
    this.email = map["email"];
    this.password = map["password"];
    this.mobileNumber = map["mobileNumber"];
    this.companyActivity = map["companyActivity"];
    this.logoUrl = map["logoUrl"];
    this.type = userType.mershant;
  }

  AppUser.customerUser(Map map) {
    this.userName = map["userName"];
    this.email = map["email"];
    this.password = map["password"];
    this.mobileNumber = map["mobileNumber"];
    this.type = userType.customer;
  }

  toJson() {
    return type == userType.customer
        ? {
            "userName": this.userName,
            "email": this.email,
            "password": this.password,
            "mobileNumber": this.mobileNumber,
            "isCustomer": true
          }
        : {
            "companyName": this.companyName,
            "userName": this.userName,
            "email": this.email,
            "password": this.password,
            "mobileNumber": this.mobileNumber,
            "companyActivity": this.companyActivity,
            "logoUrl": this.logoUrl,
            'isMershant': true
          };
  }
}
