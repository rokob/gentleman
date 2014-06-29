//  Copyright (c) 2014 rokob. All rights reserved.

import Foundation

class GNMockAPI {

  class func users() -> Dictionary<String, AnyObject!>[] {
    return arrayFromFile("users")
  }

  class func friends(user: User) -> Dictionary<String, AnyObject!>[] {
    var all_user_friends = objectFromFile("friends")
    if let friends_for_this_user: AnyObject! = all_user_friends[user.id] {
      return friends_for_this_user as Dictionary<String, AnyObject!>[]
    } else {
      return [[:]]
    }
  }

  class func bets(user: User, other: User?) -> Dictionary<String, AnyObject!>[] {
    var all_user_bets = objectFromFile("bets")
    if let bets_for_this_user: AnyObject! = all_user_bets[user.id] {
      var these_bets = bets_for_this_user as Dictionary<String, AnyObject!>[]
      if other {
        return these_bets.filter(
          {(d: Dictionary<String, AnyObject!>) -> Bool in
            d["opponent_id"] && d["opponent_id"]! as String == other!.id
          }
        )
      } else {
        return these_bets
      }
    } else {
      return [[:]]
    }
  }

  class func objectFromFile(filename: String) -> Dictionary<String, AnyObject!> {
    var path = NSBundle.mainBundle().pathForResource(filename, ofType: "json")
    var data = NSData.dataWithContentsOfFile(path, options: NSDataReadingOptions.DataReadingMapped, error: nil)
    var response: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil)
    return response as Dictionary<String, AnyObject!>
  }

  class func arrayFromFile(filename: String) -> Dictionary<String, AnyObject!>[] {
    var path = NSBundle.mainBundle().pathForResource(filename, ofType: "json")
    var data = NSData.dataWithContentsOfFile(path, options: NSDataReadingOptions.DataReadingMapped, error: nil)
    var response: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil)
    return response as Dictionary<String, AnyObject!>[]
  }

}
