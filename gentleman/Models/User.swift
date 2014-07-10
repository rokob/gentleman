//  Copyright (c) 2014 rokob. All rights reserved.

import Foundation

struct User {
  let id: String
  let name: String
  let image_url: String
  let email: String
  let phone: String?
  let token: String?

  static func fromJSON(dict: Dictionary<String, AnyObject!>) -> User {
    return User(
      id: dict["id"]! as String,
      name: dict["name"]! as String,
      image_url: dict["image_url"]! as String,
      email: dict["email"]! as String,
      phone: dict["phone"] ? (dict["phone"]! as String) : nil,
      token: dict["token"] ? (dict["token"]! as String) : nil
    )
  }
}