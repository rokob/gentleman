//  Copyright (c) 2014 rokob. All rights reserved.

import Foundation

struct Event {
  let id: String
  let text: String
  let date: NSTimeInterval

  static func fromJSON(dict: Dictionary<String, AnyObject!>) -> Event {
    return Event(
      id: dict["id"]! as String,
      text: dict["text"]! as String,
      date: dict["date"]! as NSTimeInterval
    )
  }
}
